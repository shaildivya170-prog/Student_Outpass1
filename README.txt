COLLEGE OUTPASS - HTML VERSION

This is a PHP-free frontend conversion of the uploaded College Outpass project.

Files:
- index.html      Student login
- dashboard.html  Student dashboard
- apply.html      Apply for outpass
- status.html     Student request history
- outpass.html    Approved digital outpass + QR
- warden.html     Warden login and approve/reject
- guard.html      Guard login and QR OUT/IN scan
- admin.html      Admin reports
- app.js          localStorage data and common functions
- style.css       common styling

IMPORTANT:
Pure HTML cannot connect directly to MySQL or run PHP sessions/PHPMailer.
This version therefore uses browser localStorage for the demo.

Demo login:
Student: divya kumari / STGEMS2483
Warden: priyanka@gemspolytechnic.edu / 12345
Warden: kumar@gemspolytechnic.edu.in / 12345
Guard: guard@gemspolytechnic.edu.in / 12345

QR scanner:
Camera access works most reliably when the folder is served through localhost
(for example VS Code Live Server). Some browsers block camera access for file:// pages.

To reset demo data:
Open browser Developer Tools -> Console and run:
localStorage.clear();
Then refresh index.html.

The original student_outpass_db.sql is kept separately in the ZIP for reference.
