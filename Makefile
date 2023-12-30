# Makefile para inicializar el entorno de Python y manejar dependencias en Windows y Unix

# La acción predeterminada que se ejecutará cuando solo escribas 'make'
all: inicializar

# Tarea para crear el entorno virtual y instalar dependencias en Windows
inicializar: crear_venv_windows instalar_dependencias_windows

# Tarea para crear el entorno virtual y instalar dependencias en Unix or Mac
inicializar-unix: crear_venv_unix instalar_dependencias_unix

# Tarea para crear el entorno virtual si no existe in Windows
crear_venv_windows:
	@if not exist ".venv" (\
		echo Creando entorno virtual .venv... && \
		python -m venv .venv \
	)

# Tarea para crear el entorno virtual si no existe in Unix or Mac
crear_venv_unix:
	@if [ ! -d ".venv" ]; then \
        echo "Creando entorno virtual .venv..."; \
        python3 -m venv .venv; \
	fi

# Tarea para instalar dependencias desde requirements.txt in Windows
instalar_dependencias_windows:
	@echo Instalando dependencias de Python...
	@.venv\Scripts\pip install -r requirements.txt

# Tarea para instalar dependencias desde requirements.txt in Unix or Mac
instalar_dependencias_unix:
	@echo Instalando dependencias de Python...
	@.venv/bin/pip install -r requirements.txt