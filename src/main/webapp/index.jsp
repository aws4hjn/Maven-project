<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>One-Click Deployment — HJNagesh</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&display=swap" rel="stylesheet">
  <meta name="description" content="One-click deployment demo site built for Jenkins + Tomcat pipeline." />

  <style>
    :root{
      --accent:#3b82f6; /* blue-500 */
      --muted:#64748b;
      --bg:#0f172a;
      --card:#0b1220;
      --glass: rgba(255,255,255,0.06);
      --max-width:1200px;
    }
    *{box-sizing:border-box}
    html,body{height:100%;margin:0;font-family:Inter,system-ui,Segoe UI,Roboto,"Helvetica Neue",Arial;color:#e6eef8;background:linear-gradient(180deg,#071024 0%, #071224 50%, #061122 100%);-webkit-font-smoothing:antialiased}

    .container{max-width:var(--max-width);margin:0 auto;padding:40px 24px}

    /* Header */
    header{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:12px 0}
    .brand{display:flex;gap:12px;align-items:center}
    .logo{width:56px;height:56px;border-radius:12px;background:linear-gradient(135deg,var(--accent),#7c3aed);display:flex;align-items:center;justify-content:center;color:white;font-weight:800;box-shadow:0 6px 18px rgba(59,130,246,0.12)}
    .brand h1{font-size:18px;margin:0}
    nav a{color:rgba(230,238,248,0.9);text-decoration:none;margin-left:18px;font-weight:600}

    /* Hero */
    .hero{display:grid;grid-template-columns:1fr 420px;gap:36px;align-items:center;padding:48px 0}
    .hero-left{color:white}
    .eyebrow{display:inline-block;background:linear-gradient(90deg,#0ea5e9,#7c3aed);padding:6px 12px;border-radius:999px;color:white;font-weight:700;font-size:13px}
    h2{font-size:48px;margin:18px 0 12px;line-height:1.02}
    p.lead{color:var(--muted);font-size:18px;margin:0 0 22px}
    .cta{display:flex;gap:12px}
    .btn{background:var(--accent);border:none;padding:12px 18px;border-radius:10px;color:#fff;font-weight:700;cursor:pointer;box-shadow:0 10px 30px rgba(59,130,246,0.12);font-size:15px}
    .btn.ghost{background:transparent;border:1px solid rgba(255,255,255,0.06);color:rgba(230,238,248,0.9)}

    .card{background:linear-gradient(180deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));padding:22px;border-radius:14px;backdrop-filter: blur(6px);box-shadow:0 8px 30px rgba(2,6,23,0.6)}

    .specs{display:flex;flex-direction:column;gap:12px}
    .spec{display:flex;gap:12px;align-items:center}
    .spec .dot{width:48px;height:48px;border-radius:10px;background:linear-gradient(135deg,#06b6d4,#7c3aed);display:flex;align-items:center;justify-content:center;color:white;font-weight:700}
    .spec strong{display:block;color:white}
    .spec span{color:var(--muted);font-size:14px}

    /* Features */
    .features{display:grid;grid-template-columns:repeat(3,1fr);gap:18px;margin:40px 0}
    .feature{background:var(--card);padding:20px;border-radius:12px}
    .feature h3{margin:6px 0 8px;color:white}
    .feature p{color:var(--muted);margin:0}

    /* Screenshots / Full width hero image */
    .showcase{margin:36px 0;border-radius:14px;overflow:hidden;box-shadow:0 20px 60px rgba(2,6,23,0.6)}
    .showcase img{width:100%;height:auto;display:block}

    /* Footer */
    footer{border-top:1px solid rgba(255,255,255,0.03);padding:26px 0;margin-top:36px;color:var(--muted);display:flex;justify-content:space-between;align-items:center}

    /* Responsive */
    @media (max-width:1024px){.hero{grid-template-columns:1fr 360px}}
    @media (max-width:880px){.hero{grid-template-columns:1fr;}.features{grid-template-columns:1fr;}.hero-left h2{font-size:36px}}

    /* Small animations */
    .fadeUp{opacity:0;transform:translateY(12px);animation:fadeUp 0.7s forwards}
    .delay-1{animation-delay:0.08s}.delay-2{animation-delay:0.16s}.delay-3{animation-delay:0.24s}
    @keyframes fadeUp{to{opacity:1;transform:none}}

    /* Utility */
    .muted{color:var(--muted)}
  </style>
</head>
<body>
  <div class="container">
    <header>
      <div class="brand">
        <div class="logo">HJ</div>
        <div>
          <h1 style="margin:0">One-Click Deployment</h1>
          <div class="muted" style="font-size:13px">Jenkins + Tomcat demo by HJNagesh</div>
        </div>
      </div>
      <nav>
        <a href="#features">Features</a>
        <a href="#showcase">Showcase</a>
        <a href="#contact">Contact</a>
      </nav>
    </header>

    <main>
      <section class="hero">
        <div class="hero-left">
          <span class="eyebrow fadeUp delay-1">One Click • CI/CD • Demo</span>
          <h2 class="fadeUp delay-2">Deploy faster. Ship safer. <br>One click to production.</h2>
          <p class="lead fadeUp delay-3">A beautiful, responsive demo site to showcase your Jenkins → Tomcat pipeline. Full HD-ready, lightweight, and easy to customize.</p>

          <div class="cta fadeUp delay-3">
            <button class="btn" onclick="scrollToSection('showcase')">View Showcase</button>
            <button class="btn ghost" onclick="scrollToSection('contact')">Get Source</button>
          </div>

          <div style="height:18px"></div>

          <div class="card">
            <div class="specs">
              <div class="spec">
                <div class="dot">CI</div>
                <div>
                  <strong>Continuous Integration</strong>
                  <span>Builds with Maven & automated tests</span>
                </div>
              </div>

              <div class="spec">
                <div class="dot">CD</div>
                <div>
                  <strong>Continuous Deployment</strong>
                  <span>Auto-deploy to Tomcat via Jenkins</span>
                </div>
              </div>

              <div class="spec">
                <div class="dot">SPA</div>
                <div>
                  <strong>Modern UI</strong>
                  <span>Responsive layout & retina-ready assets</span>
                </div>
              </div>

            </div>
          </div>
        </div>

        <aside class="card">
          <h3 style="margin-top:0;color:white">Project Snapshot</h3>
          <div style="font-size:13px;color:var(--muted);margin-bottom:12px">Status: <strong style="color:#34d399">Ready</strong></div>

          <div style="display:flex;gap:10px;flex-wrap:wrap">
            <div style="flex:1;min-width:160px">
              <div style="font-size:12px;color:var(--muted)">Build</div>
              <div style="font-weight:700;color:white">Maven 3.9.11</div>
            </div>
            <div style="flex:1;min-width:160px">
              <div style="font-size:12px;color:var(--muted)">Server</div>
              <div style="font-weight:700;color:white">Tomcat 9 / 10</div>
            </div>
          </div>

          <div style="height:12px"></div>
          <a href="#contact" class="btn" style="display:inline-block">Get Deploy Script</a>
        </aside>
      </section>

      <section id="features" class="features">
        <div class="feature card">
          <h3>Simple Setup</h3>
          <p>Clone, build and deploy — minimal steps with environment-friendly defaults.</p>
        </div>
        <div class="feature card">
          <h3>Secure by Default</h3>
          <p>Best-practice Tomcat roles and Jenkins credentials recommended for production.</p>
        </div>
        <div class="feature card">
          <h3>Customizable</h3>
          <p>Drop-in templates for your Jenkinsfile, Docker, or Apache configs.</p>
        </div>
      </section>

      <section id="showcase" class="showcase">
        <!-- Full-width image for visual flair (Unsplash) -->
        <img src="https://images.unsplash.com/photo-1515879218367-8466d910aaa4?auto=format&fit=crop&w=1920&q=80" alt="showcase"/>
      </section>

      <section id="contact" style="margin-top:18px;padding:24px;background:linear-gradient(180deg, rgba(255,255,255,0.02), transparent);border-radius:12px">
        <div style="display:flex;gap:20px;flex-wrap:wrap;align-items:center">
          <div style="flex:1;min-width:280px">
            <h3 style="margin:0;color:white">Get the Source & Deploy</h3>
            <p class="muted">I can provide a Jenkinsfile, deploy script and exact Tomcat changes so your pipeline works end-to-end.</p>
          </div>

          <form style="flex:0 0 380px;display:flex;gap:8px;align-items:center" onsubmit="return onRequest(event)">
            <input id="email" type="email" placeholder="your.email@example.com" required
                   style="flex:1;padding:12px;border-radius:10px;border:1px solid rgba(255,255,255,0.04);background:transparent;color:white" />
            <button class="btn" type="submit">Request</button>
          </form>
        </div>
      </section>

    </main>

    <footer>
      <div>© <strong>HJNagesh</strong> — One Click Deployment</div>
      <div class="muted">Built with ❤️ • Full HD ready · Responsive</div>
    </footer>
  </div>

  <script>
    function scrollToSection(id){
      const el = document.getElementById(id);
      if(!el) return;
      el.scrollIntoView({behavior:'smooth',block:'start'});
    }

    // simple fake request handler
    function onRequest(e){
      e.preventDefault();
      const email = document.getElementById('email').value;
      alert('Thanks! We will send the source to: ' + email + '\n(Or check the Jenkins repository)');
      return false;
    }

    // Small animation trigger
    document.addEventListener('DOMContentLoaded', ()=>{
      document.querySelectorAll('.fadeUp').forEach(el=>el.style.opacity=1);
    });
  </script>
</body>
</html>
