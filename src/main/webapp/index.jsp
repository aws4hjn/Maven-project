<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>TechOps Cloud Monitoring Dashboard</title>
<style>
body {
  margin: 0;
  font-family: 'Segoe UI', sans-serif;
  background: radial-gradient(circle at top left, #0f2027, #203a43, #2c5364);
  color: #e0e0e0;
  overflow-x: hidden;
}

header {
  background: rgba(0,0,0,0.5);
  padding: 20px 40px;
  text-align: center;
  font-size: 1.8rem;
  letter-spacing: 2px;
  color: #00e676;
  box-shadow: 0 4px 10px rgba(0,0,0,0.5);
}

.dashboard {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 25px;
  padding: 50px;
}

.card {
  background: rgba(255,255,255,0.1);
  border-radius: 15px;
  padding: 25px;
  box-shadow: 0 8px 20px rgba(0,0,0,0.4);
  transition: 0.4s;
  backdrop-filter: blur(10px);
}
.card:hover {
  transform: scale(1.05);
  box-shadow: 0 12px 30px rgba(0,0,0,0.6);
}

.card h2 {
  color: #00bcd4;
  margin-bottom: 10px;
}

.status {
  font-size: 1.1rem;
  color: #fff;
  background: linear-gradient(90deg, #00c853, #64dd17);
  display: inline-block;
  padding: 5px 15px;
  border-radius: 20px;
  font-weight: bold;
  animation: pulse 2s infinite;
}
@keyframes pulse {
  0% {opacity: 1;}
  50% {opacity: 0.6;}
  100% {opacity: 1;}
}

.footer {
  text-align: center;
  padding: 20px;
  color: rgba(255,255,255,0.7);
  font-size: 0.9rem;
  background: rgba(0,0,0,0.5);
  position: fixed;
  bottom: 0;
  width: 100%;
}

button {
  margin-top: 15px;
  background: linear-gradient(90deg, #00e5ff, #00bcd4);
  border: none;
  color: #000;
  padding: 10px 20px;
  border-radius: 25px;
  font-size: 1rem;
  cursor: pointer;
  transition: 0.3s;
}
button:hover {
  transform: scale(1.1);
  background: linear-gradient(90deg, #00bcd4, #00e5ff);
}
</style>

<script>
function refreshStatus() {
  const statusEl = document.getElementById("sysStatus");
  const rand = Math.random();
  if(rand > 0.7) {
    statusEl.innerText = "Warning";
    statusEl.style.background = "linear-gradient(90deg, #ff9800, #ffc107)";
  } else if(rand < 0.3) {
    statusEl.innerText = "Down";
    statusEl.style.background = "linear-gradient(90deg, #d50000, #ff1744)";
  } else {
    statusEl.innerText = "Healthy";
    statusEl.style.background = "linear-gradient(90deg, #00c853, #64dd17)";
  }
}
</script>
</head>
<body>

<header>🚀 Cloud & DevOps TechOps Dashboard</header>

<div class="dashboard">
  <div class="card">
    <h2>EC2 Instance Status</h2>
    <p>Region: ap-south-1</p>
    <p>Status: <span id="sysStatus" class="status">Healthy</span></p>
    <button onclick="refreshStatus()">Check Status</button>
  </div>

  <div class="card">
    <h2>RDS Database</h2>
    <p>DB Engine: MySQL 8.0</p>
    <p>Connection: <span class="status">Active</span></p>
  </div>

  <div class="card">
    <h2>S3 Storage</h2>
    <p>Total Buckets: 3</p>
    <p>Storage Used: 4.2 GB</p>
  </div>

  <div class="card">
    <h2>CloudWatch Billing</h2>
    <p>Current Cost: $0.75</p>
    <p>Alarm: <span class="status">Configured</span></p>
  </div>

  <div class="card">
    <h2>IAM Security</h2>
    <p>MFA Enabled: Yes</p>
    <p>Root Access: Disabled</p>
  </div>
</div>

<div class="footer">© 2025 | Developed by H J Nagesh | TechOps Monitoring Dashboard</div>

</body>
</html>
