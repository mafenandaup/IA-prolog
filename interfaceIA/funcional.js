document.getElementById('diagnosis-form').addEventListener('submit', function(event) {
    event.preventDefault();
    
    const symptoms = document.getElementById('symptoms').value.split(',').map(symptom => symptom.trim().toLowerCase());
    const painValue = parseInt(document.getElementById('painrange').value);
    let diagnosis = '';
    let treatment = '';
    let severity = '';

    // Determinar a severidade com base no valor do range
    if (painValue >= 0 && painValue <= 25) {
        severity = 'Pouco severa';
    } else if (painValue == 50) {
        severity = 'Moderada';
    } else if (painValue >= 75) {
        severity = 'Muito severa';
    }

    // Diagnósticos com base nos sintomas
    if (symptoms.includes('febre') && symptoms.includes('tosse')) {
        diagnosis = 'Gripe';
        treatment = 'Repouso';
    } else if (symptoms.includes('espirro') && symptoms.includes('nariz entupido')) {
        diagnosis = 'Resfriado';
        treatment = 'Hidratação';
    } else if (symptoms.includes('febre') && symptoms.includes('falta de ar') && symptoms.includes('dor de garganta') && symptoms.includes('sem paladar')) {
        diagnosis = 'Covid-19';
        treatment = 'Isolamento, Hidratação frequente, antitérmicos (controle da febre), Higiene frequente e uso de máscaras respiratórias.';
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

