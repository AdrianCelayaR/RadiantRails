# RADIANT RAILS

El proyecto se centra en el desarrollo de un Software de Gestión de Imagen y Difusión para el Proyecto de Restauración 
de Área de Estación de Ferrocarril. El objetivo principal es mejorar la percepción pública del área restaurada, 
fomentando una difusión positiva y la participación ciudadana en las actividades del proyecto. Al crear este software, 
buscamos proporcionar una herramienta integral que facilite la gestión del contenido multimedia, promueva la 
interacción en redes sociales, y permita una participación activa de la comunidad.

Things you may want to cover:

* Ruby version  3.0.2p107 (2021-07-07 revision 0db68f0233)
  
* Rails version   Rails 7.0.8.1

* Instalación y preparación

Instalar WSL2: Primero, necesitas asegurarte de que tienes WSL2 instalado en tu sistema Windows 10/11. Puedes hacerlo ejecutando la aplicación PowerShell como administrador y corriendo el comando wsl --install. Verifica que tienes la versión 2 de WSL con wsl -l -v.

Instalar Ruby: Rails es un framework para Ruby, así que necesitas tener Ruby instalado. Puedes usar rbenv o rvm para manejar las versiones de Ruby. Por ejemplo, con rbenv:

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

exec $SHELL

rbenv install 2.7.2

rbenv global 2.7.2


Instalar Node.js y Yarn: Rails requiere JavaScript Runtime como Node.js y un manejador de paquetes como Yarn. Puedes instalar Node.js usando nvm (Node Version Manager) y luego Yarn con npm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

nvm install node

npm install --global yarn


Instalar Rails: Con Ruby y Node.js instalados, puedes instalar Rails con gem:

gem install rails

rbenv rehash


Crear una nueva aplicación Rails: Una vez que tienes Rails instalado, puedes crear una nueva aplicación con:

rails new mi_app

cd mi_app

Iniciar el servidor Rails: Para iniciar tu aplicación Rails, ejecuta:

rails server

Ahora puedes acceder a tu aplicación en un navegador web en localhost:3000.
