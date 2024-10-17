document.getElementById('diagnosis-form').addEventListener('submit', function(event) {
    event.preventDefault();

    const symptoms = document.getElementById('symptoms').value.split(',').map(symptom => symptom.trim().toLowerCase());

    let diagnosis = '';
    let treatment = '';

    if (symptoms.includes('febre') && symptoms.includes('tosse')) {
        diagnosis = 'Gripe';
        treatment = 'Repouso';
    } else if (symptoms.includes('espirro') && symptoms.includes('nariz entupido')) {
        diagnosis = 'Resfriado';
        treatment = 'Hidratação';
    } else if (symptoms.includes('febre') && symptoms.includes('falta de ar') && symptoms.includes('dor de garganta'),symptoms.includes('sem paladar')) {
        diagnosis = 'Covid-19';
        treatment = 'Isolamento, Hidratação frequente, antitérmicos(controle da febre),Higiene frequente, Uso de máscaras respiratórias.';
    } else {
        diagnosis = 'Sintomas desconhecidos';
        treatment = 'Consulte um médico';
    }

    document.getElementById('result').innerHTML = `<h2>Diagnóstico: ${diagnosis}</h2><p>Tratamento recomendado: ${treatment}</p>`;
});
