
const categories = [
  'backend', 'frontend', 'contracts', 'integrations',
  'navigation', 'security', 'analytics', 'devops', 'governance'
];

fetch('data/progress.json')
  .then(res => res.json())
  .then(data => {
    categories.forEach(cat => {
      const ul = document.getElementById(`${cat}-list`);
      if (ul) {
        ul.innerHTML = '';
        (data[cat] || []).forEach(item => {
          const li = document.createElement('li');
          li.textContent = item;
          ul.appendChild(li);
        });
      }
    });

    const progressBar = document.getElementById('progress-bar');
    const progressLabel = document.getElementById('progress-label');
    if (progressBar && progressLabel && data.overallProgress !== undefined) {
      progressBar.style.width = `${data.overallProgress}%`;
      progressLabel.textContent = `Overall Progress: ${data.overallProgress}%`;
    }
  })
  .catch(err => {
    console.error("Failed to load JSON:", err);
    categories.forEach(cat => {
      const ul = document.getElementById(`${cat}-list`);
      if (ul) {
        ul.innerHTML = '<li style="color: red;">⚠️ Could not load updates.</li>';
      }
    });
  });
