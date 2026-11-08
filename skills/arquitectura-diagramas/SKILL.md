---
name: arquitectura-diagramas
description: Diseñar y revisar diagramas C4, BPMN, UML, procesos, entidad-relación y redes con trazabilidad y validación.
---

# Arquitectura y diagramas

1. Determina objetivo, público, alcance, sistema de interés, fuentes y notación. Distingue estado actual de diseño propuesto y anota supuestos y dudas sin inventar datos.
2. Para C4 modela personas, sistemas y relaciones en contexto; contenedores como aplicaciones o almacenes ejecutables o desplegables (no necesariamente Docker); componentes dentro de cada contenedor; y código solo cuando aporte valor. Construye cada vista solicitada o pertinente; no obligues a elaborar todas cuando no existan datos. Relaciona cada nivel con su padre y conserva nombres y límites coherentes.
3. Añade vistas dinámicas para escenarios importantes y de despliegue para nodos e instancias cuando se soliciten o sirvan al objetivo. Etiqueta relaciones con dirección, responsabilidad, protocolo o tecnología cuando sean conocidos. Considera límites de confianza, flujos de datos, errores y dependencias externas.
4. Para BPMN define eventos, actividades, pasarelas, carriles, participantes y tipos de flujo coherentes; separa secuencia y mensajes y comprueba inicio, terminación y ramificaciones. Para UML o ER utiliza semántica correcta, cardinalidades, roles y ciclos de vida. Para redes indica interfaces, segmentos, direccionamiento y alcance de confianza cuando se conozcan.
5. Prefiere un formato editable compatible con las herramientas del usuario, por ejemplo Structurizr DSL, Mermaid, PlantUML o BPMN 2.0 según el caso. Comprueba disponibilidad y compatibilidad real; no presentes pseudocódigo como archivo importable validado. Si hay renderizador o validador, ejecútalo; si no, informa que no se verificó.
6. Revisa cobertura de requisitos, consistencia entre vistas, direcciones, límites, legibilidad, trazabilidad, leyenda y ausencia de elementos huérfanos. Entrega fuentes editables, supuestos y pasos de validación cuando proceda.
