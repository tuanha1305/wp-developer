# WordPress Development Environment with Docker Compose

## Project Overview
This project sets up a WordPress development environment using Docker Compose. It includes:

- A WordPress service for developing and testing WordPress themes/plugins.
- A MySQL database service to store WordPress data.
- Mounting WordPress source code from the local system for easy development.

## Features
- **Local source mounting**: Edit WordPress source code directly from your local machine.
- **Database persistence**: MySQL database data is stored in a Docker volume.
- **Customizable environment**: Use `.env` for environment-specific configurations.

## Prerequisites
- [Docker](https://www.docker.com/) installed.
- [Docker Compose](https://docs.docker.com/compose/) installed.

## Project Structure
```plaintext
my-wordpress-project/
|
|-- wordpress/              # WordPress source code
|-- .env                    # Environment variables
|-- docker-compose.yml      # Docker Compose configuration
|-- .gitignore              # Ignored files for Git
```

## Getting Started

### 1. Clone the Repository
Clone this repository to your local machine:
```bash
git clone https://github.com/tuanha1305/wp-developer.git my-wordpress-project
cd my-wordpress-project
```

### 2. Set Up Environment Variables
Create a `.env` file in the project root and define the following variables:

```env
WORDPRESS_DB_HOST=db
WORDPRESS_DB_USER=wp_user
WORDPRESS_DB_PASSWORD=wp_password
WORDPRESS_DB_NAME=wp_database
MYSQL_ROOT_PASSWORD=root_password
MYSQL_DATABASE=wp_database
MYSQL_USER=wp_user
MYSQL_PASSWORD=wp_password
```

### 3. Start the Containers
Run the following command to start the WordPress and database containers:
```bash
docker-compose up -d
```

### 4. Access the WordPress Site
Open your browser and navigate to:
```
http://localhost:8000
```
Follow the WordPress installation steps.

## File Descriptions

### docker-compose.yml
Defines the services for:
- `wordpress`: The WordPress container running the latest WordPress image.
- `db`: The MySQL database container.

### .env
Contains environment variables for database and WordPress configurations.

### .gitignore
Specifies files and directories to exclude from version control, such as:
- WordPress uploads
- Database volumes
- IDE-specific files

## Customization
### Adding Plugins or Themes
1. Place plugins or themes in the `wordpress/wp-content/plugins` or `wordpress/wp-content/themes` directory.
2. Refresh your WordPress dashboard.

### Debugging
To debug PHP issues, modify `docker-compose.yml` to add Xdebug or other tools.

### Accessing MySQL
Access the MySQL container using:
```bash
docker exec -it wordpress_db mysql -u wp_user -p
```

## Shutting Down
To stop and remove the containers, run:
```bash
docker-compose down
```

## Troubleshooting
### Common Issues
- **Containers not starting**: Ensure Docker is running and check for port conflicts.
- **Database connection issues**: Verify environment variables in `.env`.

### Checking Logs
Use the following command to check container logs:
```bash
docker-compose logs
```

## Contributing
Feel free to submit issues or pull requests for improvements.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

