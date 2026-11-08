---
name: ingenieria-calidad
description: Estrategias de pruebas, revisión de código y arquitectura, calidad, fiabilidad y seguridad de APIs.
---

# Calidad, pruebas y revisión

Sintetiza prácticas útiles de Code Reviewer, API Tester, Accessibility Auditor y Evidence Collector del catálogo local de Claude. No adoptes umbrales numéricos arbitrarios ni ejecutes pruebas invasivas sin autorización.

1. Establece comportamiento esperado y riesgos; identifica las pruebas unitarias, de integración, contratos, accesibilidad y sistema que aporten evidencia proporcional. Cubre caminos de error, límites, permisos y regresiones relevantes.
2. Para APIs verifica contratos, autenticación y autorización, validación, errores, paginación, idempotencia, límites y compatibilidad donde aplique. Elige objetivos de rendimiento a partir de requisitos reales; no ataques servicios externos o producción sin permiso.
3. Revisa cambios y llamadas relacionadas; prioriza errores demostrables por severidad. Aporta archivo y línea, condición, impacto y corrección; diferencia hechos, riesgos y preguntas. Evita hallazgos especulativos.
4. Usa datos de prueba no sensibles; documenta comandos, resultados y cobertura real. No afirmes que una comprobación pasó si no se ejecutó. Para auditorías explícitas carga `cyber-neo` si está disponible.
