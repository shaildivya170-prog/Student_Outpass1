
const KEY='collegeOutpassData';
const USERKEY='collegeOutpassUser';
const USERS={
 student:{name:'divya kumari',code:'STGEMS2483',gender:'Female'},
 wardens:[
  {name:'priyanka kumari',email:'priyanka@gemspolytechnic.edu',password:'12345',gender:'Female'},
  {name:'kumar sir',email:'kumar@gemspolytechnic.edu.in',password:'12345',gender:'male'}
 ],
 guard:{name:'Guard',email:'guard@gemspolytechnic.edu.in',password:'12345'}
};
function data(){return JSON.parse(localStorage.getItem(KEY)||'[]')}
function saveData(x){localStorage.setItem(KEY,JSON.stringify(x))}
function user(){return JSON.parse(localStorage.getItem(USERKEY)||'null')}
function setUser(x){localStorage.setItem(USERKEY,JSON.stringify(x))}
function logout(){localStorage.removeItem(USERKEY);location.href='index.html'}
function code(){return 'OP'+new Date().toISOString().replace(/\D/g,'').slice(0,14)+Math.floor(10+Math.random()*90)}
function esc(s){return String(s??'').replace(/[&<>"']/g,m=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[m]))}
function statusBadge(s){return `<span class="badge ${esc(s)}">${esc(s)}</span>`}
function seed(){
 if(localStorage.getItem(KEY)!==null)return;
 const old=[
 ['OP2026090707440350','2026-09-07','11:13','11:14','market','shoping','Completed'],
 ['OP2026090708111844','2026-09-07','11:41','11:44','market','shopping','Completed'],
 ['OP2026090708440169','2026-09-07','12:13','12:14','market','shopping','Rejected'],
 ['OP20260920123759672','2026-09-20','04:05','06:00','market','for shopping','Completed']
 ].map((x,i)=>({id:i+1,code:x[0],student:USERS.student,date:x[1],out:x[2],ret:x[3],destination:x[4],reason:x[5],status:x[6],rejection:x[6]=='Rejected'?'time not manage always going out':'',actualOut:x[6]=='Completed'?'2026-09-20 16:11:06':'',actualIn:x[6]=='Completed'?'2026-09-20 16:11:40':'',scanCount:x[6]=='Completed'?2:0}));
 saveData(old)
}
function requireStudent(){let u=user();if(!u||u.role!=='student'){location.href='index.html';return null}return u}
function formatDate(d){return d}
seed();
