---
name: ingenieria-datos
description: Modelado de datos, SQL, bases de datos relacionales y no relacionales, rendimiento y migraciones seguras.
---

# Datos y bases de datos

Sintetiza prácticas relevantes de Database Optimizer y Data Engineer del catálogo local de Claude, adaptándolas al motor y versiones reales, incluido SQL Server cuando corresponda.

1. Identifica motor, versión, datos, volumen, patrones de acceso, restricciones, usuarios y entorno. Modela entidades, relaciones, claves, cardinalidades, integridad, seguridad y retención. Distingue modelos conceptual, lógico y físico.
2. Antes de optimizar, establece una línea base y examina métricas y planes del motor concreto. Detecta N+1, selectividad, estadísticas, bloqueos, cardinalidades y costes; una exploración secuencial no es necesariamente incorrecta y los índices también tienen coste de escritura y espacio.
3. Propón consultas parametrizadas, permisos mínimos y pruebas reproducibles. Verifica compatibilidad de sintaxis y comportamiento con la documentación del motor. No ejecutes EXPLAIN ANALYZE ni consultas de carga sobre producción sin evaluar sus efectos.
4. Para migraciones considera copia de seguridad comprobable, compatibilidad hacia atrás, impacto en locks, volumen, integridad, despliegue y reversión o recuperación. Pide autorización antes de cambios destructivos o sobre datos reales.
5. Explica supuestos, mediciones reales, riesgos y lo que no se pudo validar. No afirmes que una consulta o migración funciona sin probarla.
