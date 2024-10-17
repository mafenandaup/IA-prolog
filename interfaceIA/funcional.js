document.getElementById('diagnosis-form').addEventListener('submit', function(event) {
    event.preventDefault();
    
    const symptoms = document.getElementById('symptoms').value.split(',').map(symptom => symptom.trim().toLowerCase());
    const painValue = parseInt(document.getElementById('painrange').value);
    let diagnosis = '';
    let treatment = '';
    let severity = '';

   
    if (painValue >= 0 && painValue <= 25) {
        severity = 'Pouco severa';
    } else if (painValue == 50) {
        severity = 'Moderada';
    } else if (painValue >= 75) {
        severity = 'Muito severa';
    }

    if (symptoms.includes('febre') && symptoms.includes('tosse') && symptoms.includes('dor no corpo')) {
        diagnosis = 'Gripe';
        treatment = 'Repouso, hidratação e antitérmicos.';
    } else if (symptoms.includes('espirros') && symptoms.includes('coriza')&& symptoms.includes('tosse')) {
        diagnosis = 'Resfriado';
        treatment = 'Repouso e medicamentos para alívio dos sintomas';
    } else if (symptoms.includes('febre') && symptoms.includes('falta de ar') && symptoms.includes('tosse') && symptoms.includes('falta de ar')) {
        diagnosis = 'Covid-19';
        treatment =  'Isolamento, hidratação e acompanhamento médico';
    } else if (symptoms.includes('coriza') && symptoms.includes('dor de cabeca') && symptoms.includes('dor de cabeça') && symptoms.includes('dor facial') && symptoms.includes('nariz congestionado')) {
        diagnosis = 'Sinusite';
        treatment =  'Descongestionantes e, em alguns casos, antibióticos';
    } else if (symptoms.includes('febre') && symptoms.includes('dor de cabeca') && symptoms.includes('dor no corpo') && symptoms.includes('manchas na pele')) {
        diagnosis = 'Dengue';
        treatment =  'Hidratação intensa e acompanhamento hospitalar';
    } else if (symptoms.includes('febre') && symptoms.includes('falta de ar') && symptoms.includes('dor de garganta') && symptoms.includes('sem paladar')) {
        diagnosis = 'Amigdalite';
        treatment =  'Isolamento, hidratação e acompanhamento médico';
    } else if (symptoms.includes('febre') && symptoms.includes('falta de ar') && symptoms.includes('dor de garganta') && symptoms.includes('sem paladar')) {
        diagnosis = 'Pneumonia';
        treatment =  'Isolamento, hidratação e acompanhamento médico';
    } else {
        diagnosis = 'Sintomas desconhecidos';
        treatment = 'Caso não tenha-o feito, consulte um médico.';
    }

    document.getElementById('result').innerHTML = `<h2>Diagnóstico: ${diagnosis}</h2>
    <p>Tratamento recomendado: ${treatment}</p>
    <p>Severidade: ${severity}</p>`;
});

document.querySelector('button[type="reset"]').addEventListener('click', function() {
    document.getElementById('result').innerHTML = '';
});

