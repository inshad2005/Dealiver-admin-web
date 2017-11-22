var express 		= require('express');
var app 			= express();
var bodyParser 		= require('body-parser');
var mysql 			= require('mysql2');
var passwordHash 	= require('password-hash');
var Sequelize 		= require('sequelize');
var mailer 			= require('express-mailer');
var fs 				= require("fs");
var env 			= "dev";
var config 			= require('./config.json')[env];
var password 		= config.password ? config.password : null;
var urlencodedParser = bodyParser.urlencoded({ extended: false });
// var nodemailer = require('nodemailer');
// var smtpTransport = require('nodemailer-smtp-transport');
// var connection = mysql.createConnection({host: 'localhost',user: 'root',password: '',database: 'dealiver'})
// -----------------------------------------mailer-------------------------------------
mailer.extend(app, {
  from: 'promatics.tajinder@gmail.com',
  host: 'smtp.gmail.com', // hostname 
  secureConnection: true, // use SSL 
  port: 465, // port for secure SMTP 
  transportMethod: 'SMTP', // default is SMTP. Accepts anything that nodemailer accepts 
  auth: {
    user: 'promatics.tajinder@gmail.com',
    pass: 'protjmsingh'
  }
});
// -----------------------------------------mailer end---------------------------------
// ------------------------for email template setting-----------------------------------------------
app.engine('jade', require('jade').__express);
app.set('view engine','jade');
// ------------------------for email template setting end-----------------------------------------------
//--------------------------------------database---------------------------------------
const db={};
var sequelize = new Sequelize(
    config.database,
    config.user,
    config.password, {
        logging: console.log,
        dialect: 'mysql',
        define: {
            timestamps: false
        }
    }
);
//---------------------------------------------------------------------------------------

const Admin = sequelize.define('admins', {first_name: {type: Sequelize.STRING},
										last_name: {type: Sequelize.STRING},
										username: {type: Sequelize.STRING},
										password: {type: Sequelize.STRING},
										email: {type: Sequelize.STRING},
										user_email: {type: Sequelize.STRING},
										image: {type: Sequelize.STRING},
										decoded_password: {type: Sequelize.STRING},
									}); 
const Users = sequelize.define('users', {first_name: {type: Sequelize.STRING},
										last_name: {type: Sequelize.STRING},
										password: {type: Sequelize.STRING},
										email: {type: Sequelize.STRING},
										phone_no: {type: Sequelize.STRING},
										prefrence_id: {type: Sequelize.STRING},
										status: {type: Sequelize.STRING},
										address: {type: Sequelize.STRING},
										short_description: {type: Sequelize.STRING},
										image: {type: Sequelize.STRING},
										decoded_password: {type: Sequelize.STRING},
									}); 
const Prefrence = sequelize.define('prefrences_lists', {pref_name: {type: Sequelize.STRING},
										pref_image: {type: Sequelize.STRING},
										status: {type: Sequelize.STRING}
									});
Users.belongsTo(Prefrence, {foreignKey:'prefrence_id',as:'prefrence'});


app.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies
app.use(bodyParser.json());

//-----------------------------------------headers----------------------------------------------
app.all('/*', function(req, res,next) {
   res.header("Access-Control-Allow-Origin", "*");
   res.header("Access-Control-Allow-Credentials", "true");
   res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Key, Authorization");
   res.header("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE, PATCH");
   next()
});
//---------------------------------------------------------------------------------------
app.get('/', function(req, res) {
  res.send('hello');
});

app.post('/login',(req,res)=>{
	if(req.method=='POST'){
		console.log(req.body)
		var email = req.body.email;
		var password = req.body.password;
		// passwordHash.verify(password,results[0].password)
		Admin.findOne({where:[{email:email},{decoded_password:password}]}).then((data)=>{
			if(data==null){
				res.send({response:false,message:'wrong credentials',data:data})				
			}else{
				res.send({response:true,message:'success',data:data})				
			}
		},err=>{
			res.send({response:false,data:err})				
		});
    }
});

app.post('/update/:flag',(req,res)=>{
	if(req.method=='POST'){
		var flag = req.params.flag;
		var id = req.body.id;
		var password = req.body.password;
		var first_name = req.body.first_name;
		var	last_name = req.body.last_name;
		var	username = req.body.username;
		var	user_email = req.body.user_email;
		var image = req.body.image;
		var imageType = req.body.imagetype;
		Admin.findById(id).then((result)=>{
			if(result != null && result != ""){
				if(flag==1){
					result.update({password:passwordHash.generate(password),decoded_password:password}).then((result)=>{
						console.log('data',result);
						res.send({response:true,message:'Password Updated',data:result})				
					},(err)=>{
						res.send({response:false,data:err})
					})
				}
				else if(flag==0){
					if(req.body.image){
							var name = Math.random().toString(36).slice(-8);
							var image = req.body.image.toString().split(";base64,");
							console.log(image[1]);
							var bitmap = new Buffer(image[1], 'base64');
							fs.writeFileSync(__dirname+"/www/images/" + name + "."+imageType, bitmap);
							result.update({image:name + "."+imageType}).then((result)=>{
							},(err)=>{
							})
					}
					result.update({first_name:first_name,last_name:last_name,username:username,user_email:user_email}).then((result)=>{
						console.log(result);
						res.send({response:true,message:'Profile Updated',data:result})				
					},(err)=>{
						res.send({response:false,data:err})
					})
				}else{res.send({response:false})}
			}else{res.send({response:false})}
		},err=>{console.log(err)})
	}
});
app.get('/users',(req,res)=>{
	Users.findAll({
		include:[{
              model: Prefrence,
              attributes: ['pref_name'],
              as:'prefrence'
            }]
        }).then((result)=>{
		if(result != "" && result != null){
			res.send({response:true,message:'success',data:result})
		}else{
			res.send({response:false,message:'No Users',data:result})
		}
	})
});
app.get('/updateuserstatus/:id',(req,res)=>{
	var id = req.params.id;
	Users.findOne({where:{id:id}}).then((result)=>{
		if(result != "" && result != null){
			result.update({status:result.status=='active'?'inactive':'active'}).then((result)=>{
				res.send({response:true,message:'success',data:result})
			},err=>{
				res.end({response:false});	
			})
		}else{
			res.send({response:false,message:'No Users',data:result})
		}
	})
});
app.post('/forgot',(req,res)=>{
	var email = req.body.email;
	if(email != "" && email != null){
		Admin.findOne({where:{user_email:email}}).then((result)=>{
			if(result != "" && result != null){
				var randomstring = Math.random().toString(36).slice(-8);
				result.update({password:passwordHash.generate(randomstring),decoded_password:randomstring}).then((reslt)=>{
					var mailOptions = {
					    to: 'promatics.tajinder@gmail.com',
					    subject: 'Dealiver Password',
					    user: {
					    	username:reslt.username,
              				password:reslt.decoded_password
					    }
					}
					app.mailer.send('forgot',mailOptions, function (err,message) {
		                if (err) {
		                  // handle error 
		                  console.log(err);
		                  res.send('There was an error sending the email');
		                  return;
		                }
		                res.send({response: true,message: 'Your Account password has been sent to registered email account'});
	            	});
				},err=>{
					res.end({response:false});	
				})
			}else{
				res.end({response:false,message:"Email not found in database",result:result});
			}
		},err=>{
			res.end({response:false});	
		})
	}else{
		res.end({response:false,message:"Email is empty"});
	}
});


server = app.listen(3001, function () {

  var host = server.address().address
  var port = server.address().port

  console.log("Example app listening at http://%s:%s", host, port)

})