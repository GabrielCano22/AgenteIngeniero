# Agente Ingeniero de Sistemas para OpenCode

Agente en español para ingeniería de sistemas, con énfasis en arquitectura y diagramas C4, BPMN y UML. Incluye un revisor independiente y siete skills que se cargan cuando son relevantes.

## Qué incluye

- `ingeniero-sistemas`: agente principal o subagente para arquitectura, programación, datos, redes, seguridad y documentación.
- `revisor-cuchilla`: subagente de revisión que no puede editar archivos ni ejecutar comandos de shell.
- Skills de diagramas, arquitectura, datos, calidad, procesos, diseño y documentos.

El agente es una guía para el modelo, no garantiza exactitud ni reemplaza la verificación humana. Su desempeño depende del modelo, permisos y herramientas disponibles.

## Instalación global en Windows

Requisitos: Git y OpenCode V2. En PowerShell, elige una carpeta donde clonar el repositorio y ejecuta:

```powershell
git clone https://github.com/GabrielCano22/AgenteIngeniero.git
cd AgenteIngeniero
powershell.exe -NoProfile -File .\install.ps1
```

Si Windows bloquea scripts de PowerShell, no es necesario cambiar la política: usa la instalación manual siguiente. El instalador no modifica la configuración ni reemplaza archivos existentes: si encuentra un conflicto, se detiene e informa antes de copiar. Por defecto usa `~/.config/opencode` o `$env:XDG_CONFIG_HOME/opencode` cuando está configurado.

## Instalación manual: Windows, macOS y Linux

1. Clona o descarga este repositorio.
2. Copia los archivos de `agents/` a `~/.config/opencode/agents/`.
3. Copia cada carpeta de `skills/` a `~/.config/opencode/skills/`.
4. Si `XDG_CONFIG_HOME` está configurado, utiliza su carpeta `opencode/` en lugar de `~/.config/opencode/`.
5. No sobrescribas agentes o skills propios sin revisar primero las diferencias.

En OpenCode selecciona `ingeniero-sistemas` desde el selector de agentes o pide explícitamente que lo use. Para una segunda revisión, pide usar `revisor-cuchilla`. Ejecuta `/reload` si no aparecen después de copiar los archivos.

## Integraciones opcionales

CodeGraph, Context7, Engram, Packet Tracer, Figma, Canva y `cyber-neo` **no están incluidos ni se instalan automáticamente**. El agente puede aprovecharlos cuando estén configurados y autorizados por separado. No se incluyen cuentas, claves, datos de proyectos ni configuraciones privadas.

## Fuentes

Las guías de arquitectura, datos, calidad, procesos, diseño y documentos sintetizan prácticas revisadas de [The Agency](https://github.com/msitarzewski/agency-agents); la guía de documentos también toma en cuenta la validación de PDF observada en las instrucciones locales de Codex. Estas integraciones no implican afiliación con sus autores.
