
    <?php 
    $envSettings = [];
    if (file_exists(dirname(__FILE__).'/.env')) {
        $envSettings = parse_ini_file(dirname(__FILE__).'/.env');
    }


//include 'env_settings.php'; // Vervang 'env_settings.php' door de daadwerkelijke naam van het bestand waarin $envSettings is ingesteld.

// Stel de variabelen in met waarden uit $envSettings
define("DB_SERVER", $envSettings["DB_SERVER"]);
define("DB_NAME", $envSettings["DB_NAME"]);
define("DB_USER", $envSettings["DB_USER"]);
define("DB_PASSWORD", $envSettings["DB_PASSWORD"]);

    ?>
