<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="theme-color" content="#0d6efd">
<title>توصيلك بلمحة</title>
<style>
/* ============ إعادة الضبط ============ */
* { margin:0; padding:0; box-sizing:border-box; -webkit-tap-highlight-color:transparent; }
:root{
  --primary:#0d6efd;
  --primary-dark:#0a58ca;
  --accent:#ffb703;
  --success:#22c55e;
  --danger:#ef4444;
  --bg:#f2f5f9;
  --card:#ffffff;
  --text:#1e293b;
  --muted:#64748b;
  --border:#e2e8f0;
  --radius:16px;
  --shadow:0 4px 16px rgba(15,23,42,.08);
}
html,body{height:100%;}
body{
  font-family:'Segoe UI',Tahoma,Arial,sans-serif;
  background:var(--bg);
  color:var(--text);
  overflow-x:hidden;
  user-select:none;
}
button,input,select,textarea{font-family:inherit;font-size:15px;outline:none;}
button{cursor:pointer;border:none;}

/* ============ الحاويات العامة ============ */
.screen{display:none;min-height:100vh;flex-direction:column;}
.screen.active{display:flex;}

/* ============ شاشة البداية ============ */
#splash{
  align-items:center;justify-content:center;
  background:linear-gradient(150deg,#0d6efd,#083b8c);
  color:#fff;text-align:center;gap:18px;
}
#splash .logo{
  width:120px;height:120px;border-radius:32px;background:#fff;
  display:flex;align-items:center;justify-content:center;
  font-size:62px;box-shadow:0 12px 40px rgba(0,0,0,.35);
  animation:pop .8s ease;
}
@keyframes pop{0%{transform:scale(.3);opacity:0}100%{transform:scale(1);opacity:1}}
#splash h1{font-size:30px;letter-spacing:1px;}
#splash p{opacity:.85;font-size:14px;}
.loader{
  width:40px;height:40px;border:4px solid rgba(255,255,255,.3);
  border-top-color:#fff;border-radius:50%;animation:spin 1s linear infinite;margin-top:10px;
}
@keyframes spin{to{transform:rotate(360deg)}}

/* ============ شاشة الدخول ============ */
#auth{padding:30px 22px;justify-content:center;}
.auth-head{text-align:center;margin-bottom:26px;}
.auth-head .logo-sm{
  width:80px;height:80px;border-radius:24px;margin:0 auto 14px;
  background:linear-gradient(135deg,#0d6efd,#083b8c);color:#fff;
  display:flex;align-items:center;justify-content:center;font-size:40px;
  box-shadow:var(--shadow);
}
.auth-head h2{font-size:22px;margin-bottom:6px;}
.auth-head p{color:var(--muted);font-size:13px;}

.tabs{display:flex;background:#e6ebf2;border-radius:12px;padding:4px;margin-bottom:20px;}
.tabs button{
  flex:1;padding:10px;border-radius:9px;background:transparent;
  color:var(--muted);font-weight:600;transition:.25s;
}
.tabs button.active{background:#fff;color:var(--primary);box-shadow:0 2px 8px rgba(0,0,0,.08);}

.field{margin-bottom:14px;}
.field label{display:block;font-size:13px;font-weight:600;margin-bottom:6px;color:#334155;}
.field input,.field select,.field textarea{
  width:100%;padding:13px 14px;border:1.5px solid var(--border);
  border-radius:12px;background:#fff;transition:.2s;
}
.field input:focus,.field select:focus,.field textarea:focus{
  border-color:var(--primary);box-shadow:0 0 0 3px rgba(13,110,253,.12);
}

.btn{
  width:100%;padding:14px;border-radius:12px;font-weight:700;font-size:16px;
  background:var(--primary);color:#fff;transition:.2s;
  display:flex;align-items:center;justify-content:center;gap:8px;
}
.btn:active{transform:scale(.97);}
.btn.secondary{background:#e6ebf2;color:var(--primary);}
.btn.success{background:var(--success);}
.btn.danger{background:var(--danger);}
.btn.ghost{background:transparent;color:var(--primary);border:1.5px solid var(--primary);}
.btn:disabled{opacity:.5;pointer-events:none;}

.role-pick{display:flex;gap:10px;margin-bottom:18px;}
.role-pick .role{
  flex:1;padding:14px 8px;border:2px solid var(--border);border-radius:14px;
  text-align:center;background:#fff;transition:.2s;
}
.role-pick .role.sel{border-color:var(--primary);background:#eaf2ff;}
.role-pick .role span{display:block;font-size:26px;margin-bottom:4px;}
.role-pick .role b{font-size:13px;}

/* ============ الهيدر ============ */
header{
  background:linear-gradient(135deg,#0d6efd,#083b8c);color:#fff;
  padding:16px 18px;display:flex;align-items:center;justify-content:space-between;
  border-radius:0 0 22px 22px;box-shadow:var(--shadow);position:sticky;top:0;z-index:50;
}
header .h-left{display:flex;align-items:center;gap:10px;}
header .avatar{
  width:42px;height:42px;border-radius:50%;background:rgba(255,255,255,.22);
  display:flex;align-items:center;justify-content:center;font-size:20px;
}
header h3{font-size:16px;font-weight:700;}
header small{font-size:11px;opacity:.85;display:block;}
.icon-btn{
  background:rgba(255,255,255,.18);width:40px;height:40px;border-radius:12px;
  color:#fff;font-size:18px;display:flex;align-items:center;justify-content:center;
}

/* ============ المحتوى ============ */
.content{flex:1;padding:16px;padding-bottom:96px;overflow-y:auto;}

.card{
  background:var(--card);border-radius:var(--radius);padding:16px;
  box-shadow:var(--shadow);margin-bottom:14px;
}
.card h4{font-size:16px;margin-bottom:12px;display:flex;align-items:center;gap:8px;}
.card h4 .dot{width:8px;height:8px;border-radius:50%;background:var(--primary);}

.stats{display:grid;grid-template-columns:repeat(2,1fr);gap:12px;margin-bottom:14px;}
.stat{
  background:#fff;border-radius:var(--radius);padding:16px;box-shadow:var(--shadow);
  text-align:center;
}
.stat .num{font-size:24px;font-weight:800;color:var(--primary);}
.stat .lbl{font-size:12px;color:var(--muted);margin-top:4px;}

/* ============ عناصر الطلب ============ */
.order-item{
  background:#fff;border-radius:var(--radius);padding:14px;box-shadow:var(--shadow);
  margin-bottom:12px;border-right:5px solid var(--primary);
}
.order-item.pending{border-right-color:var(--accent);}
.order-item.done{border-right-color:var(--success);}
.order-item.cancelled{border-right-color:var(--danger);}
.order-top{display:flex;justify-content:space-between;align-items:center;margin-bottom:10px;}
.order-top b{font-size:14px;}
.badge{
  padding:4px 10px;border-radius:20px;font-size:11px;font-weight:700;
}
.badge.pending{background:#fff4d6;color:#a16207;}
.badge.accepted{background:#dbeafe;color:#1d4ed8;}
.badge.delivering{background:#ede9fe;color:#6d28d9;}
.badge.done{background:#dcfce7;color:#15803d;}
.badge.cancelled{background:#fee2e2;color:#b91c1c;}
.route{font-size:13px;color:#475569;line-height:1.9;}
.route div{display:flex;gap:8px;align-items:flex-start;}
.route i{font-style:normal;}
.order-foot{
  display:flex;justify-content:space-between;align-items:center;
  margin-top:12px;padding-top:10px;border-top:1px dashed var(--border);
}
.price{font-weight:800;color:var(--success);font-size:16px;}
.small-btn{
  padding:9px 16px;border-radius:10px;font-size:13px;font-weight:700;
  background:var(--primary);color:#fff;
}
.small-btn.grey{background:#e6ebf2;color:#475569;}
.small-btn.green{background:var(--success);color:#fff;}
.small-btn.red{background:var(--danger);color:#fff;}

.empty{
  text-align:center;padding:50px 20px;color:var(--muted);
}
.empty span{font-size:56px;display:block;margin-bottom:12px;opacity:.5;}

/* ============ شريط التنقل السفلي ============ */
nav{
  position:fixed;bottom:0;left:0;right:0;background:#fff;
  display:flex;justify-content:space-around;padding:8px 4px 12px;
  box-shadow:0 -4px 20px rgba(15,23,42,.09);z-index:60;
  border-radius:22px 22px 0 0;
}
nav button{
  flex:1;background:none;display:flex;flex-direction:column;align-items:center;
  gap:3px;color:var(--muted);font-size:11px;font-weight:600;padding:6px 0;
  transition:.2s;position:relative;
}
nav button span{font-size:21px;}
nav button.active{color:var(--primary);}
nav button.active::before{
  content:'';position:absolute;top:-8px;width:34px;height:4px;
  background:var(--primary);border-radius:0 0 6px 6px;
}

/* ============ التنبيهات ============ */
#toast{
  position:fixed;bottom:110px;left:50%;transform:translateX(-50%) translateY(30px);
  background:#1e293b;color:#fff;padding:12px 22px;border-radius:30px;
  font-size:14px;font-weight:600;opacity:0;transition:.3s;z-index:200;
  max-width:90%;text-align:center;pointer-events:none;
}
#toast.show{opacity:1;transform:translateX(-50%) translateY(0);}
#toast.ok{background:var(--success);}
#toast.err{background:var(--danger);}

/* ============ النافذة المنبثقة ============ */
.modal{
  position:fixed;inset:0;background:rgba(15,23,42,.55);z-index:150;
  display:none;align-items:flex-end;justify-content:center;
}
.modal.show{display:flex;}
.modal-box{
  background:#fff;width:100%;max-width:520px;border-radius:24px 24px 0 0;
  padding:22px;max-height:88vh;overflow-y:auto;
  animation:slideUp .3s ease;
}
@keyframes slideUp{from{transform:translateY(100%)}to{transform:translateY(0)}}
.modal-box h3{font-size:18px;margin-bottom:16px;text-align:center;}
.modal-bar{width:46px;height:5px;background:#cbd5e1;border-radius:5px;margin:0 auto 16px;}

/* ============ شاشة التتبع ============ */
.timeline{position:relative;padding-right:26px;margin-top:6px;}
.timeline::before{
  content:'';position:absolute;right:8px;top:6px;bottom:6px;width:3px;background:#e2e8f0;
}
.timeline .step{position:relative;margin-bottom:18px;font-size:13px;}
.timeline .step::before{
  content:'';position:absolute;right:-23px;top:3px;width:15px;height:15px;
  border-radius:50%;background:#cbd5e1;border:3px solid #fff;box-shadow:0 0 0 2px #e2e8f0;
}
.timeline .step.on::before{background:var(--success);box-shadow:0 0 0 2px #bbf7d0;}
.timeline .step b{display:block;color:var(--text);}
.timeline .step small{color:var(--muted);font-size:11px;}

.map-box{
  height:170px;border-radius:var(--radius);background:
    repeating-linear-gradient(45deg,#e8f0fb,#e8f0fb 12px,#dbe8fa 12px,#dbe8fa 24px);
  display:flex;align-items:center;justify-content:center;flex-direction:column;
  color:var(--primary);font-weight:700;gap:8px;margin-bottom:14px;font-size:14px;
}
.map-box span{font-size:40px;animation:bounce 2s infinite;}
@keyframes bounce{0%,100%{transform:translateY(0)}50%{transform:translateY(-10px)}}

/* ============ كود الخصم ============ */
.promo{
  background:linear-gradient(135deg,#ffb703,#fb8500);color:#fff;
  border-radius:var(--radius);padding:16px;text-align:center;margin-bottom:14px;
}
.promo b{font-size:20px;display:block;letter-spacing:2px;}
.promo small{font-size:12px;opacity:.9;}

/* ============ السعر التقديري ============ */
.estimate{
  background:#eaf2ff;border:1.5px dashed var(--primary);border-radius:12px;
  padding:12px;text-align:center;font-weight:700;color:var(--primary-dark);
  margin-bottom:14px;font-size:15px;
}

/* ============ الاستجابة ============ */
@media(min-width:600px){
  .content{max-width:560px;margin:0 auto;width:100%;}
  header{max-width:560px;margin:0 auto;width:100%;}
  nav{max-width:560px;margin:0 auto;}
}
</style>
</head>
<body>

<!-- ================= شاشة البداية ================= -->
<div id="splash" class="screen active">
  <div class="logo">🛵</div>
  <h1>توصيلك بلمحة</h1>
  <p>سرعة • أمان • احترافية</p>
  <div class="loader"></div>
</div>

<!-- ================= شاشة الدخول ================= -->
<div id="auth" class="screen">
  <div class="auth-head">
    <div class="logo-sm">🛵</div>
    <h2>توصيلك بلمحة</h2>
    <p>أسرع تطبيق توصيل في مدينتك</p>
  </div>

  <div class="tabs">
    <button id="tabLogin" class="active" onclick="switchAuth('login')">تسجيل الدخول</button>
    <button id="tabReg" onclick="switchAuth('reg')">حساب جديد</button>
  </div>

  <!-- دخول -->
  <div id="loginForm">
    <div class="field">
      <label>رقم الهاتف</label>
      <input type="tel" id="loginPhone" placeholder="07XXXXXXXXX" inputmode="numeric">
    </div>
    <div class="field">
      <label>كلمة المرور</label>
      <input type="password" id="loginPass" placeholder="••••••••">
    </div>
    <button class="btn" onclick="doLogin()">دخول</button>
    <p style="text-align:center;margin-top:14px;font-size:12px;color:var(--muted)">
      للتجربة: <b>07700000001</b> / <b>123456</b>
    </p>
  </div>

  <!-- تسجيل -->
  <div id="regForm" style="display:none">
    <div class="role-pick">
      <div class="role sel" data-role="customer" onclick="pickRole(this)">
        <span>🧑</span><b>زبون</b>
      </div>
      <div class="role" data-role="driver" onclick="pickRole(this)">
        <span>🏍️</span><b>سائق</b>
      </div>
    </div>
    <div class="field">
      <label>الاسم الكامل</label>
      <input type="text" id="regName" placeholder="مثال: أحمد محمد">
    </div>
    <div class="field">
      <label>رقم الهاتف</label>
      <input type="tel" id="regPhone" placeholder="07XXXXXXXXX" inputmode="numeric">
    </div>
    <div class="field">
      <label>كلمة المرور</label>
      <input type="password" id="regPass" placeholder="6 أحرف على الأقل">
    </div>
    <div class="field" id="vehField" style="display:none">
      <label>نوع المركبة</label>
      <select id="regVehicle">
        <option value="دراجة نارية">دراجة نارية 🏍️</option>
        <option value="سيارة">سيارة 🚗</option>
        <option value="دراجة هوائية">دراجة هوائية 🚲</option>
      </select>
    </div>
    <button class="btn success" onclick="doRegister()">إنشاء الحساب</button>
  </div>
</div>

<!-- ================= شاشة الزبون ================= -->
<div id="customerApp" class="screen">
  <header>
    <div class="h-left">
      <div class="avatar">🧑</div>
      <div>
        <h3 id="custName">مرحباً</h3>
        <small id="custPhone">—</small>
      </div>
    </div>
    <button class="icon-btn" onclick="logout()">⏻</button>
  </header>

  <div class="content">
    <!-- الرئيسية -->
    <div id="c-home" class="page">
      <div class="promo">
        <b>خصم 20%</b>
        <small>استخدم كود: WELCOME20</small>
      </div>

      <div class="stats">
        <div class="stat"><div class="num" id="cTotal">0</div><div class="lbl">إجمالي الطلبات</div></div>
        <div class="stat"><div class="num" id="cActive">0</div><div class="lbl">طلبات نشطة</div></div>
      </div>

      <div class="card">
        <h4><span class="dot"></span> اطلب توصيل الآن</h4>
        <div class="field">
          <label>📍 مكان الاستلام</label>
          <input type="text" id="oPickup" placeholder="العنوان بالتفصيل">
        </div>
        <div class="field">
          <label>🏁 مكان التسليم</label>
          <input type="text" id="oDrop" placeholder="العنوان بالتفصيل">
        </div>
        <div class="field">
          <label>📦 نوع الطلب</label>
          <select id="oType" onchange="estimate()">
            <option value="وثائق ومستندات">وثائق ومستندات</option>
            <option value="طعام">طعام 🍔</option>
            <option value="بقالة">بقالة 🛒</option>
            <option value="أدوية">أدوية 💊</option>
            <option value="طرود">طرود 📦</option>
            <option value="أخرى">أخرى</option>
          </select>
        </div>
        <div class="field">
          <label>📏 المسافة التقريبية (كم)</label>
          <input type="number" id="oDist" value="5" min="1" max="100" oninput="estimate()">
        </div>
        <div class="estimate" id="oEstimate">السعر التقديري: 5,000 د.ع</div>
        <div class="field">
          <label>📝 ملاحظات (اختياري)</label>
          <textarea id="oNote" rows="2" placeholder="أي تفاصيل إضافية..."></textarea>
        </div>
        <button class="btn" onclick="createOrder()">🚀 إرسال الطلب</button>
      </div>
    </div>

    <!-- طلباتي -->
    <div id="c-orders" class="page" style="display:none">
      <h3 style="margin-bottom:12px;font-size:17px;">📋 طلباتي</h3>
      <div id="cOrdersList"></div>
    </div>

    <!-- الحساب -->
    <div id="c-account" class="page" style="display:none">
      <div class="card" style="text-align:center">
        <div style="width:80px;height:80px;border-radius:50%;background:#eaf2ff;
             display:flex;align-items:center;justify-content:center;font-size:38px;
             margin:0 auto 12px;">🧑</div>
        <h3 id="accName">—</h3>
        <p style="color:var(--muted);font-size:13px;margin-top:4px" id="accPhone">—</p>
      </div>
      <div class="card">
        <h4><span class="dot"></span> معلومات الحساب</h4>
        <p style="font-size:13px;color:#475569;line-height:2">
          نوع الحساب: <b>زبون</b><br>
          تاريخ التسجيل: <b id="accDate">—</b>
        </p>
      </div>
      <button class="btn danger" onclick="logout()">تسجيل الخروج</button>
    </div>
  </div>

  <nav>
    <button class="active" data-page="c-home" onclick="cNav(this)"><span>🏠</span>الرئيسية</button>
    <button data-page="c-orders" onclick="cNav(this)"><span>📋</span>طلباتي</button>
    <button data-page="c-account" onclick="cNav(this)"><span>👤</span>حسابي</button>
  </nav>
</div>

<!-- ================= شاشة السائق ================= -->
<div id="driverApp" class="screen">
  <header>
    <div class="h-left">
      <div class="avatar">🏍️</div>
      <div>
        <h3 id="drvName">مرحباً</h3>
        <small id="drvStatus">متصل ●</small>
      </div>
    </div>
    <button class="icon-btn" onclick="logout()">⏻</button>
  </header>

  <div class="content">
    <!-- الطلبات المتاحة -->
    <div id="d-available" class="page">
      <div class="stats">
        <div class="stat"><div class="num" id="dEarn">0</div><div class="lbl">أرباح اليوم (د.ع)</div></div>
        <div class="stat"><div class="num" id="dDone">0</div><div class="lbl">طلبات مكتملة</div></div>
      </div>
      <h3 style="margin-bottom:12px;font-size:17px;">🔥 الطلبات المتاحة</h3>
      <div id="dAvailList"></div>
    </div>

    <!-- طلباتي -->
    <div id="d-mine" class="page" style="display:none">
      <h3 style="margin-bottom:12px;font-size:17px;">🚚 الطلبات الجارية</h3>
      <div id="dMineList"></div>
    </div>

    <!-- الحساب -->
    <div id="d-account" class="page" style="display:none">
      <div class="card" style="text-align:center">
        <div style="width:80px;height:80px;border-radius:50%;background:#dcfce7;
             display:flex;align-items:center;justify-content:center;font-size:38px;
             margin:0 auto 12px;">🏍️</div>
        <h3 id="dAccName">—</h3>
        <p style="color:var(--muted);font-size:13px;margin-top:4px" id="dAccPhone">—</p>
      </div>
      <div class="card">
        <h4><span class="dot"></span> إحصائيات السائق</h4>
        <p style="font-size:13px;color:#475569;line-height:2">
          المركبة: <b id="dAccVeh">—</b><br>
          الطلبات المكتملة: <b id="dAccDone">0</b><br>
          إجمالي الأرباح: <b id="dAccEarn">0 د.ع</b>
        </p>
      </div>
      <button class="btn danger" onclick="logout()">تسجيل الخروج</button>
    </div>
  </div>

  <nav>
    <button class="active" data-page="d-available" onclick="dNav(this)"><span>🔥</span>المتاحة</button>
    <button data-page="d-mine" onclick="dNav(this)"><span>🚚</span>طلباتي</button>
    <button data-page="d-account" onclick="dNav(this)"><span>👤</span>حسابي</button>
  </nav>
</div>

<!-- ================= نافذة التتبع ================= -->
<div class="modal" id="trackModal">
  <div class="modal-box">
    <div class="modal-bar"></div>
    <h3>📍 تتبع الطلب</h3>
    <div class="map-box">
      <span>🛵</span>
      <div id="mapText">جاري التوصيل...</div>
    </div>
    <div class="card" style="box-shadow:none;padding:0;margin-bottom:14px">
      <div class="route" id="trackRoute"></div>
    </div>
    <div class="timeline" id="trackTimeline"></div>
    <button class="btn secondary" onclick="closeModal('trackModal')">إغلاق</button>
  </div>
</div>

<!-- ================= التنبيه ================= -->
<div id="toast"></div>

<script>
/* =========================================================
   توصيلك بلمحة — منطق التطبيق الكامل
   ========================================================= */

/* ---------- قاعدة البيانات المحلية ---------- */
const DB = {
  get(k, def){ try{ return JSON.parse(localStorage.getItem(k)) ?? def; }catch(e){ return def; } },
  set(k, v){ localStorage.setItem(k, JSON.stringify(v)); }
};

let users    = DB.get('dl_users', []);
let orders   = DB.get('dl_orders', []);
let session  = DB.get('dl_session', null);
let regRole  = 'customer';

/* ---------- بيانات تجريبية أولية ---------- */
function seed(){
  if(users.length === 0){
    users = [
      { id:'u1', name:'زبون تجريبي', phone:'07700000001', pass:'123456',
        role:'customer', date: new Date().toLocaleDateString('ar-EG') },
      { id:'u2', name:'علي السائق', phone:'07700000002', pass:'123456',
        role:'driver', vehicle:'دراجة نارية', date: new Date().toLocaleDateString('ar-EG'),
        earnings:0, completed:0 }
    ];
    DB.set('dl_users', users);
  }
  if(orders.length === 0){
    orders = [
      { id:'o1', customerId:'u1', customerName:'زبون تجريبي', customerPhone:'07700000001',
        pickup:'شارع الرشيد - قرب الجامع', drop:'الكرادة - شارع 62',
        type:'طعام', dist:4, note:'اتصل قبل الوصول', price:4000,
        status:'pending', driverId:null, driverName:null,
        createdAt: Date.now(), code: 'DL' + Math.floor(1000 + Math.random()*9000) },
      { id:'o2', customerId:'u1', customerName:'زبون تجريبي', customerPhone:'07700000001',
        pickup:'المنصور - شارع 14', drop:'زيونة - مول بغداد',
        type:'أدوية', dist:8, note:'', price:8000,
        status:'pending', driverId:null, driverName:null,
        createdAt: Date.now(), code: 'DL' + Math.floor(1000 + Math.random()*9000) }
    ];
    DB.set('dl_orders', orders);
  }
}

/* ---------- أدوات مساعدة ---------- */
function saveAll(){ DB.set('dl_users', users); DB.set('dl_orders', orders); }

function toast(msg, type=''){
  const t = document.getElementById('toast');
  t.textContent = msg;
  t.className = 'show ' + type;
  clearTimeout(t._tm);
  t._tm = setTimeout(()=>{ t.className = type; }, 2600);
}

function show(id){
  document.querySelectorAll('.screen').forEach(s => s.classList.remove('active'));
  document.getElementById(id).classList.add('active');
  window.scrollTo(0,0);
}

function closeModal(id){ document.getElementById(id).classList.remove('show'); }

function money(n){ return Number(n).toLocaleString('en-US') + ' د.ع'; }

function timeAgo(ts){
  const d = Math.floor((Date.now()-ts)/60000);
  if(d < 1) return 'الآن';
  if(d < 60) return 'قبل ' + d + ' دقيقة';
  const h = Math.floor(d/60);
  if(h < 24) return 'قبل ' + h + ' ساعة';
  return 'قبل ' + Math.floor(h/24) + ' يوم';
}

const statusAr = {
  pending:'قيد الانتظار', accepted:'تم القبول',
  delivering:'جاري التوصيل', done:'تم التسليم', cancelled:'ملغي'
};

/* =========================================================
   شاشة البداية
   ========================================================= */
seed();
setTimeout(()=>{
  if(session){
    const u = users.find(x => x.id === session);
    if(u){ enterApp(u); return; }
  }
  show('auth');
}, 2200);

/* =========================================================
   المصادقة
   ========================================================= */
function switchAuth(mode){
  const isLogin = mode === 'login';
  document.getElementById('tabLogin').classList.toggle('active', isLogin);
  document.getElementById('tabReg').classList.toggle('active', !isLogin);
  document.getElementById('loginForm').style.display = isLogin ? 'block' : 'none';
  document.getElementById('regForm').style.display  = isLogin ? 'none'  : 'block';
}

function pickRole(el){
  document.querySelectorAll('.role-pick .role').forEach(r => r.classList.remove('sel'));
  el.classList.add('sel');
  regRole = el.dataset.role;
  document.getElementById('vehField').style.display = regRole === 'driver' ? 'block' : 'none';
}

function doLogin(){
  const phone = document.getElementById('loginPhone').value.trim();
  const pass  = document.getElementById('loginPass').value.trim();
  if(!phone || !pass) return toast('أدخل رقم الهاتف وكلمة المرور', 'err');

  const u = users.find(x => x.phone === phone && x.pass === pass);
  if(!u) return toast('رقم الهاتف أو كلمة المرور غير صحيحة', 'err');

  session = u.id;
  DB.set('dl_session', session);
  toast('مرحباً ' + u.name + ' 👋', 'ok');
  enterApp(u);
}

function doRegister(){
  const name  = document.getElementById('regName').value.trim();
  const phone = document.getElementById('regPhone').value.trim();
  const pass  = document.getElementById('regPass').value.trim();
  const veh   = document.getElementById('regVehicle').value;

  if(name.length < 3)   return toast('أدخل الاسم الكامل', 'err');
  if(phone.length < 10) return toast('رقم هاتف غير صحيح', 'err');
  if(pass.length < 6)   return toast('كلمة المرور 6 أحرف على الأقل', 'err');
  if(users.some(u => u.phone === phone)) return toast('الرقم مسجل مسبقاً', 'err');

  const u = {
    id: 'u' + Date.now(),
    name, phone, pass, role: regRole,
    date: new Date().toLocaleDateString('ar-EG')
  };
  if(regRole === 'driver'){ u.vehicle = veh; u.earnings = 0; u.completed = 0; }

  users.push(u);
  session = u.id;
  saveAll();
  DB.set('dl_session', session);
  toast('تم إنشاء الحساب بنجاح 🎉', 'ok');
  enterApp(u);
}

function logout(){
  session = null;
  DB.set('dl_session', null);
  document.getElementById('loginPhone').value = '';
  document.getElementById('loginPass').value  = '';
  show('auth');
  switchAuth('login');
  toast('تم تسجيل الخروج');
}

function enterApp(u){
  if(u.role === 'driver'){
    document.getElementById('drvName').textContent = u.name;
    show('driverApp');
    renderDriver();
  } else {
    document.getElementById('custName').textContent = u.name;
    document.getElementById('custPhone').textContent = u.phone;
    document.getElementById('accName').textContent = u.name;
    document.getElementById('accPhone').textContent = u.phone;
    document.getElementById('accDate').textContent = u.date || '—';
    show('customerApp');
    renderCustomer();
  }
}

/* =========================================================
   منطق الزبون
   ========================================================= */
function cNav(btn){
  document.querySelectorAll('#customerApp nav button').forEach(b => b.classList.remove('active'));
  btn.classList.add('active');
  document.querySelectorAll('#customerApp .page').forEach(p => p.style.display = 'none');
  document.getElementById(btn.dataset.page).style.display = 'block';
  renderCustomer();
}

function estimate(){
  const dist = Number(document.getElementById('oDist').value) || 1;
  const type = document.getElementById('oType').value;
  let base = 2000;
  let perKm = 600;
  if(type === 'طعام')     perKm = 700;
  if(type === 'أدوية')    perKm = 800;
  if(type === 'طرود')     perKm = 650;
  if(type === 'بقالة')    perKm = 600;
  if(type === 'وثائق ومستندات') perKm = 550;
  const total = base + (dist * perKm);
  document.getElementById('oEstimate').textContent = 'السعر التقديري: ' + money(total);
  return total;
}

function createOrder(){
  const u = users.find(x => x.id === session);
  if(!u) return logout();

  const pickup = document.getElementById('oPickup').value.trim();
  const drop   = document.getElementById('oDrop').value.trim();
  const type   = document.getElementById('oType').value;
  const dist   = Number(document.getElementById('oDist').value) || 1;
  const note   = document.getElementById('oNote').value.trim();

  if(!pickup) return toast('أدخل مكان الاستلام', 'err');
  if(!drop)   return toast('أدخل مكان التسليم', 'err');

  const price = estimate();
  const order = {
    id: 'o' + Date.now(),
    customerId: u.id,
    customerName: u.name,
    customerPhone: u.phone,
    pickup, drop, type, dist, note, price,
    status: 'pending',
    driverId: null,
    driverName: null,
    createdAt: Date.now(),
    code: 'DL' + Math.floor(1000 + Math.random()*9000)
  };

  orders.unshift(order);
  saveAll();

  document.getElementById('oPickup').value = '';
  document.getElementById('oDrop').value   = '';
  document.getElementById('oNote').value   = '';
  document.getElementById('oDist').value   = '5';
  estimate();

  toast('تم إرسال طلبك بنجاح 🚀', 'ok');
  renderCustomer();
  cNav(document.querySelector('#customerApp nav button[data-page="c-orders"]'));
}

function renderCustomer(){
  const u = users.find(x => x.id === session);
  if(!u) return;

  const mine = orders.filter(o => o.customerId === u.id);
  const active = mine.filter(o => o.status !== 'done' && o.status !== 'cancelled');

  document.getElementById('cTotal').textContent  = mine.length;
  document.getElementById('cActive').textContent = active.length;

  const list = document.getElementById('cOrdersList');
  if(mine.length === 0){
    list.innerHTML = `<div class="empty"><span>📭</span>لا توجد طلبات بعد<br>ابدأ بطلب توصيل جديد</div>`;
    return;
  }
  list.innerHTML = mine.map(o => orderCard(o, 'customer')).join('');
}

function orderCard(o, view){
  const badgeCls = o.status;
  let actions = '';

  if(view === 'customer'){
    if(o.status === 'pending')
      actions = `<button class="small-btn red" onclick="cancelOrder('${o.id}')">إلغاء</button>`;
    else if(o.status === 'accepted' || o.status === 'delivering')
      actions = `<button class="small-btn green" onclick="openTrack('${o.id}')">تتبع</button>`;
    else if(o.status === 'done')
      actions = `<button class="small-btn grey" onclick="openTrack('${o.id}')">التفاصيل</button>`;
    else
      actions = `<span style="font-size:12px;color:#94a3b8">ملغي</span>`;
  } else {
    if(o.status === 'pending')
      actions = `<button class="small-btn green" onclick="acceptOrder('${o.id}')">قبول الطلب</button>`;
    else if(o.status === 'accepted')
      actions = `<button class="small-btn" onclick="startDelivery('${o.id}')">بدء التوصيل</button>`;
    else if(o.status === 'delivering')
      actions = `<button class="small-btn green" onclick="finishOrder('${o.id}')">تم التسليم</button>`;
    else if(o.status === 'done')
      actions = `<span style="font-size:12px;color:#22c55e;font-weight:700">✔ مكتمل</span>`;
  }

  return `
  <div class="order-item ${o.status === 'done' ? 'done' : o.status === 'cancelled' ? 'cancelled' : 'pending'}">
    <div class="order-top">
      <b>#${o.code} · ${o.type}</b>
      <span class="badge ${badgeCls}">${statusAr[o.status]}</span>
    </div>
    <div class="route">
      <div><i>📍</i><span>${o.pickup}</span></div>
      <div><i>🏁</i><span>${o.drop}</span></div>
      <div><i>📏</i><span>${o.dist} كم · ${timeAgo(o.createdAt)}</span></div>
      ${o.driverName ? `<div><i>🏍️</i><span>السائق: ${o.driverName}</span></div>` : ''}
    </div>
    <div class="order-foot">
      <span class="price">${money(o.price)}</span>
      ${actions}
    </div>
  </div>`;
}

function cancelOrder(id){
  const o = orders.find(x => x.id === id);
  if(!o) return;
  o.status = 'cancelled';
  saveAll();
  toast('تم إلغاء الطلب');
  renderCustomer();
}

function openTrack(id){
  const o = orders.find(x => x.id === id);
  if(!o) return;

  document.getElementById('trackRoute').innerHTML = `
    <div><i>📍</i><span>${o.pickup}</span></div>
    <div><i>🏁</i><span>${o.drop}</span></div>
    ${o.driverName ? `<div><i>🏍️</i><span>السائق: ${o.driverName}</span></div>` : ''}
    <div><i>💰</i><span>${money(o.price)}</span></div>
  `;

  const steps = [
    { k:'pending',    t:'تم إنشاء الطلب',    s:'بانتظار قبول السائق' },
    { k:'accepted',   t:'قبل السائق الطلب',  s:'السائق في الطريق إليك' },
    { k:'delivering', t:'جاري التوصيل',      s:'طلبك في الطريق' },
    { k:'done',       t:'تم التسليم',        s:'شكراً لاستخدامك التطبيق' }
  ];
  const order = ['pending','accepted','delivering','done'];
  const idx = order.indexOf(o.status);

  document.getElementById('trackTimeline').innerHTML = steps.map((st, i) =>
    `<div class="step ${i <= idx ? 'on' : ''}">
       <b>${st.t}</b><small>${st.s}</small>
     </div>`).join('');

  document.getElementById('mapText').textContent =
    o.status === 'done' ? 'تم التسليم بنجاح ✅' :
    o.status === 'delivering' ? 'السائق في الطريق إليك 🛵' :
    o.status === 'accepted' ? 'السائق يتجه للاستلام 📦' : 'بانتظار قبول السائق ⏳';

  document.getElementById('trackModal').classList.add('show');
}

/* =========================================================
   منطق السائق
   ========================================================= */
function dNav(btn){
  document.querySelectorAll('#driverApp nav button').forEach(b => b.classList.remove('active'));
  btn.classList.add('active');
  document.querySelectorAll('#driverApp .page').forEach(p => p.style.display = 'none');
  document.getElementById(btn.dataset.page).style.display = 'block';
  renderDriver();
}

function renderDriver(){
  const u = users.find(x => x.id === session);
  if(!u) return;

  document.getElementById('drvName').textContent = u.name;
  document.getElementById('dAccName').textContent = u.name;
  document.getElementById('dAccPhone').textContent = u.phone;
  document.getElementById('dAccVeh').textContent = u.vehicle || '—';
  document.getElementById('dAccDone').textContent = u.completed || 0;
  document.getElementById('dAccEarn').textContent = money(u.earnings || 0);

  document.getElementById('dEarn').textContent = (u.earnings || 0).toLocaleString('en-US');
  document.getElementById('dDone').textContent = u.completed || 0;

  // المتاحة
  const avail = orders.filter(o => o.status === 'pending');
  const availBox = document.getElementById('dAvailList');
  availBox.innerHTML = avail.length
    ? avail.map(o => orderCard(o, 'driver')).join('')
    : `<div class="empty"><span>😴</span>لا توجد طلبات متاحة حالياً<br>سيصلك إشعار عند وصول طلب</div>`;

  // طلباتي
  const mine = orders.filter(o => o.driverId === u.id && o.status !== 'done' && o.status !== 'cancelled');
  const mineBox = document.getElementById('dMineList');
  mineBox.innerHTML = mine.length
    ? mine.map(o => orderCard(o, 'driver')).join('')
    : `<div class="empty"><span>🚚</span>لا توجد طلبات جارية</div>`;
}

function acceptOrder(id){
  const u = users.find(x => x.id === session);
  const o = orders.find(x => x.id === id);
  if(!u || !o) return;
  if(o.status !== 'pending') return toast('الطلب لم يعد متاحاً', 'err');

  o.status = 'accepted';
  o.driverId = u.id;
  o.driverName = u.name;
  saveAll();
  toast('تم قبول الطلب ✅', 'ok');
  renderDriver();
  dNav(document.querySelector('#driverApp nav button[data-page="d-mine"]'));
}

function startDelivery(id){
  const o = orders.find(x => x.id === id);
  if(!o) return;
  o.status = 'delivering';
  saveAll();
  toast('بدأ التوصيل 🛵', 'ok');
  renderDriver();
}

function finishOrder(id){
  const o = orders.find(x => x.id === id);
  const u = users.find(x => x.id === session);
  if(!o || !u) return;

  o.status = 'done';
  o.finishedAt = Date.now();

  const commission = Math.round(o.price * 0.8); // 80% للسائق
  u.earnings  = (u.earnings || 0) + commission;
  u.completed = (u.completed || 0) + 1;

  saveAll();
  toast('تم التسليم! +' + money(commission), 'ok');
  renderDriver();
}

/* =========================================================
   مزامنة تلقائية كل 4 ثوانٍ (تحديث الحالة)
   ========================================================= */
setInterval(()=>{
  if(!session) return;
  const u = users.find(x => x.id === session);
  if(!u) return;
  orders = DB.get('dl_orders', orders);
  users  = DB.get('dl_users', users);
  if(u.role === 'driver') renderDriver();
  else renderCustomer();
}, 4000);

/* ---------- تهيئة أولية ---------- */
estimate();

/* ---------- منع الخروج بالخطأ على أندرويد ---------- */
window.addEventListener('keydown', e => {
  if(e.key === 'Escape'){
    document.querySelectorAll('.modal.show').forEach(m => m.classList.remove('show'));
  }
});

/* ---------- ربط زر الرجوع في Klencod (إن وُجد) ---------- */
document.addEventListener('backbutton', function(){
  const open = document.querySelector('.modal.show');
  if(open){ open.classList.remove('show'); return; }
  if(session){ logout(); }
}, false);
</script>
</body>
</html>