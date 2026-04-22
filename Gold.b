<!DOCTYPE html>

<html dir="rtl" lang="ar">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>مجوهرات البيارق الذهبية - أسعار الذهب في الكويت</title>
  <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;700;900&display=swap" rel="stylesheet"/>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

  <style>
    /* ===== المتغيرات ===== */
    :root {
      --gold: #ffd700;
      --gold-dim: rgba(255, 215, 0, 0.3);
      --gold-bg: rgba(255, 215, 0, 0.08);
      --dark: #0a0a0a;
      --card-bg: rgba(255, 255, 255, 0.04);
      --border: rgba(210, 184, 99, 0.35);
      --text: #f0e6c8;
      --text-dim: #888;
      --green: #34c759;
      --red: #ff3b30;
    }

    /* ===== الأساس ===== */
    * { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'Cairo', sans-serif;
      background: #0d0d0d;
      background-image:
        radial-gradient(ellipse at 20% 20%, rgba(255,215,0,0.04) 0%, transparent 60%),
        radial-gradient(ellipse at 80% 80%, rgba(255,180,0,0.03) 0%, transparent 60%);
      color: var(--text);
      min-height: 100vh;
      padding: 30px 16px 60px;
    }

    /* ===== الحاوية ===== */
    .container {
      max-width: 760px;
      margin: 0 auto;
    }

    /* ===== العنوان ===== */
    .page-title {
      text-align: center;
      font-size: clamp(1.8rem, 5vw, 2.8rem);
      font-weight: 900;
      color: var(--gold);
      letter-spacing: 2px;
      margin-bottom: 6px;
      animation: shimmer 3s infinite;
      text-shadow: 0 0 10px rgba(255,215,0,0.4);
    }

    .page-subtitle {
      text-align: center;
      font-size: 0.95rem;
      color: var(--text-dim);
      margin-bottom: 32px;
    }

    @keyframes shimmer {
      0%, 100% { text-shadow: 0 0 10px rgba(255,215,0,0.4); }
      50%       { text-shadow: 0 0 25px rgba(255,215,0,0.8), 0 0 40px rgba(255,200,0,0.4); }
    }

    /* ===== ويدجت السعر الدولي ===== */
    .gold-widget {
      background: var(--card-bg);
      border: 1px solid var(--border);
      border-radius: 14px;
      padding: 18px 24px 14px;
      margin-bottom: 24px;
      backdrop-filter: blur(6px);
    }

    .widget-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      color: var(--gold);
      font-weight: 700;
      font-size: 0.95rem;
      margin-bottom: 8px;
    }

    .widget-price {
      display: flex;
      align-items: baseline;
      gap: 10px;
      font-size: 2.2rem;
      font-weight: 900;
      color: var(--text);
    }

    .widget-price .currency {
      font-size: 0.8rem;
      color: var(--text-dim);
      font-weight: 600;
    }

    .widget-change {
      font-size: 0.9rem;
      margin-top: 4px;
      min-height: 20px;
    }

    /* ===== بطاقات العيارات ===== */
    .cards-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
      gap: 16px;
      margin-bottom: 28px;
    }

    .card-box {
      background: var(--gold-bg);
      border: 1.5px solid var(--gold-dim);
      border-radius: 14px;
      padding: 20px 16px;
      text-align: center;
      box-shadow: 0 0 18px rgba(255,215,0,0.12);
      transition: transform 0.25s ease, box-shadow 0.25s ease;
    }

    .card-box:hover {
      transform: translateY(-4px);
      box-shadow: 0 6px 28px rgba(255,215,0,0.25);
    }

    .card-title {
      font-size: 1rem;
      font-weight: 700;
      color: var(--gold);
      margin-bottom: 10px;
      text-shadow: 1px 1px 3px rgba(0,0,0,0.6);
    }

    .card-price {
      font-size: 1.45rem;
      font-weight: 900;
      color: var(--text);
      text-shadow: 0 0 8px rgba(255,215,0,0.3);
    }

    /* ===== معلومات التحديث ===== */
    .info-row {
      display: flex;
      justify-content: space-between;
      align-items: center;
      font-size: 0.88rem;
      color: var(--text-dim);
      margin-bottom: 28px;
      padding: 0 4px;
    }

    #currentTime {
      font-weight: 700;
      color: var(--gold);
    }

    /* ===== الرسم البياني ===== */
    .chart-wrapper {
      background: var(--card-bg);
      border: 1px solid var(--border);
      border-radius: 14px;
      padding: 20px;
    }

    .chart-title {
      font-size: 1rem;
      font-weight: 700;
      color: var(--gold);
      margin-bottom: 14px;
      text-align: center;
    }

    /* ===== مؤشر الحالة ===== */
    .status-dot {
      display: inline-block;
      width: 8px;
      height: 8px;
      background: var(--green);
      border-radius: 50%;
      margin-left: 6px;
      animation: pulse 1.5s infinite;
    }

    @keyframes pulse {
      0%, 100% { opacity: 1; }
      50%       { opacity: 0.3; }
    }

    .status-dot.error { background: var(--red); animation: none; }

    /* ===== استجابة الجوال ===== */
    @media (max-width: 480px) {
      .cards-grid { grid-template-columns: repeat(2, 1fr); }
      .widget-price { font-size: 1.7rem; }
    }
  </style>

</head>
<body>
<div class="container">

  <!-- العنوان -->

  <h1 class="page-title">🏅 مجوهرات البيارق الذهبية</h1>
  <p class="page-subtitle">أسعار الذهب المباشرة في الكويت</p>

  <!-- ويدجت السعر الدولي -->

  <div class="gold-widget">
    <div class="widget-header">
      <span>💰 GOLD (XAU/USD)</span>
      <span><span class="status-dot" id="statusDot"></span> <span id="statusText">جاري الاتصال...</span></span>
    </div>
    <div class="widget-price">
      <span class="currency">USD</span>
      <span id="goldPriceUSD">--</span>
    </div>
    <div class="widget-change" id="goldChange">--</div>
  </div>

  <!-- بطاقات العيارات -->

  <div class="cards-grid">
    <div class="card-box">
      <div class="card-title">عيار 24</div>
      <div class="card-price" id="gram24">--</div>
    </div>
    <div class="card-box">
      <div class="card-title">عيار 22</div>
      <div class="card-price" id="gram22">--</div>
    </div>
    <div class="card-box">
      <div class="card-title">عيار 21</div>
      <div class="card-price" id="gram21">--</div>
    </div>
    <div class="card-box">
      <div class="card-title">عيار 18</div>
      <div class="card-price" id="gram18">--</div>
    </div>
  </div>

  <!-- شريط التحديث -->

  <div class="info-row">
    <span id="updateTime">جاري التحديث...</span>
    <span id="currentTime">--:--:--</span>
  </div>

  <!-- الرسم البياني (يعرض بيانات حقيقية) -->

  <div class="chart-wrapper">
    <div class="chart-title">📈 سعر الغرام عيار 24 (د.ك) - آخر 10 تحديثات</div>
    <canvas id="goldChart" height="120"></canvas>
  </div>

</div>

<script>
  // ===== الإعدادات =====
  const TROY_OUNCE = 31.1034768;
  const ADJUSTMENT = -0.013; // -0.050 + 0.037
  const UPDATE_INTERVAL = 30000; // 30 ثانية (بدلاً من 1 ثانية لتفادي الحظر)

  const goldUrl   = 'https://corsproxy.io/?https://forex-data-feed.swissquote.com/public-quotes/bboquotes/instrument/XAU/USD';
  const ratesUrl  = 'https://corsproxy.io/?https://open.er-api.com/v6/latest';

  let prevGoldUSD = null;

  // ===== الرسم البياني =====
  const MAX_POINTS = 10;
  let chartPrices = [];
  let chartLabels = [];

  const ctx = document.getElementById('goldChart').getContext('2d');
  const goldChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: chartLabels,
      datasets: [{
        label: 'سعر الغرام عيار 24 (د.ك)',
        data: chartPrices,
        fill: true,
        backgroundColor: 'rgba(255, 215, 0, 0.1)',
        borderColor: '#ffd700',
        borderWidth: 2,
        pointBackgroundColor: '#ffd700',
        pointRadius: 3,
        tension: 0.4
      }]
    },
    options: {
      responsive: true,
      animation: { duration: 400 },
      plugins: {
        legend: {
          labels: { color: '#f0e6c8', font: { family: 'Cairo', size: 13 } }
        }
      },
      scales: {
        x: { ticks: { color: '#888', font: { family: 'Cairo', size: 11 } }, grid: { color: 'rgba(255,255,255,0.05)' } },
        y: { ticks: { color: '#888', font: { family: 'Cairo', size: 11 } }, grid: { color: 'rgba(255,255,255,0.05)' } }
      }
    }
  });

  function addChartPoint(price) {
    const now = new Date();
    const label = now.getHours().toString().padStart(2,'0') + ':' +
                  now.getMinutes().toString().padStart(2,'0') + ':' +
                  now.getSeconds().toString().padStart(2,'0');
    if (chartPrices.length >= MAX_POINTS) {
      chartPrices.shift();
      chartLabels.shift();
    }
    chartPrices.push(price);
    chartLabels.push(label);
    goldChart.update();
  }

  // ===== جلب البيانات =====
  async function fetchGoldPriceUSD() {
    const res  = await fetch(goldUrl);
    const data = await res.json();
    let total = 0, count = 0;
    data.forEach(item => {
      item.spreadProfilePrices.forEach(sp => {
        total += (sp.bid + sp.ask) / 2;
        count++;
      });
    });
    if (count === 0) throw new Error('لا توجد بيانات أسعار');
    return total / count;
  }

  async function fetchUSDtoKWD() {
    const res  = await fetch(ratesUrl);
    const data = await res.json();
    const rate = data?.rates?.KWD;
    if (!rate) throw new Error('لا يوجد سعر صرف KWD');
    return rate;
  }

  function caratPrice(gramKWD, carat) {
    return gramKWD * (carat / 24) + ADJUSTMENT;
  }

  function setStatus(ok, msg) {
    const dot  = document.getElementById('statusDot');
    const text = document.getElementById('statusText');
    dot.className  = 'status-dot' + (ok ? '' : ' error');
    text.textContent = msg;
  }

  // ===== التحديث الرئيسي =====
  async function updatePrices() {
    try {
      const [goldUSD, kwdRate] = await Promise.all([fetchGoldPriceUSD(), fetchUSDtoKWD()]);

      const gramKWD = (goldUSD * kwdRate) / TROY_OUNCE;

      const p24 = caratPrice(gramKWD, 24);
      const p22 = caratPrice(gramKWD, 22);
      const p21 = caratPrice(gramKWD, 21);
      const p18 = caratPrice(gramKWD, 18);

      document.getElementById('gram24').textContent = p24.toFixed(3) + ' د.ك';
      document.getElementById('gram22').textContent = p22.toFixed(3) + ' د.ك';
      document.getElementById('gram21').textContent = p21.toFixed(3) + ' د.ك';
      document.getElementById('gram18').textContent = p18.toFixed(3) + ' د.ك';

      // سعر الدولار والتغيير
      document.getElementById('goldPriceUSD').textContent = goldUSD.toFixed(2);
      const changeEl = document.getElementById('goldChange');
      if (prevGoldUSD !== null) {
        const diff     = goldUSD - prevGoldUSD;
        const diffPerc = (diff / prevGoldUSD) * 100;
        const sign     = diff >= 0 ? '+' : '';
        changeEl.textContent = sign + diffPerc.toFixed(2) + '% (' + sign + diff.toFixed(2) + ' USD)';
        changeEl.style.color = diff >= 0 ? '#34c759' : '#ff3b30';
      }
      prevGoldUSD = goldUSD;

      // الوقت
      const now = new Date();
      const timeStr = now.toLocaleTimeString('ar-KW');
      document.getElementById('updateTime').textContent = 'آخر تحديث: ' + timeStr;
      document.getElementById('currentTime').textContent = timeStr;

      // الرسم البياني بالبيانات الحقيقية
      addChartPoint(parseFloat(p24.toFixed(3)));

      setStatus(true, 'مباشر');
    } catch (err) {
      setStatus(false, 'خطأ في الاتصال');
      document.getElementById('updateTime').textContent = 'فشل التحديث - سيعاد المحاولة';
      console.error('خطأ:', err);
    }
  }

  // تشغيل فوري ثم كل 30 ثانية
  updatePrices();
  setInterval(updatePrices, UPDATE_INTERVAL);

  // تحديث الساعة كل ثانية بدون طلب API
  setInterval(() => {
    document.getElementById('currentTime').textContent =
      new Date().toLocaleTimeString('ar-KW');
  }, 1000);
</script>

</body>
</html>
