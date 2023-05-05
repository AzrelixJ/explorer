/*
  This file must be valid JSON. But comments are allowed

  Please edit settings.json, not settings.json.template
*/
{
  // locale: Change language definitions. Only English is supported for now
  "locale": "locale/en.json",

  // dbsettings: a collection of settings that allow the explorer to connect to MongoDB
  "dbsettings": {
    // user: The MongoDB username
    "user": "eiquidus",
    // password: The MongoDB password
    "password": "Nd^p2d77ceBX!L",
    // database: The MongoDB database name (default: explorerdb)
    "database": "explorerdb",
    // address: The MongoDB hostname. This should always be 'localhost' if connecting to a local instance, otherwise specify the ip address of a remote instance
    "address": "localhost",
    // port: The port # that MongoDB is configured to listen for requests on (default: 27017)
    "port": 27017
  },

  // wallet: a collection of settings that allow the explorer to connect to the coin wallet
  "wallet": {
    // host: The hostname or ip address of the wallet to connect to (default: localhost)
    "host": "localhost",
    // port: The port # that the wallet is configured to listen for RPC requests on (default: 51573 for Exor wallet)
    "port": 51573,
    // username: The wallet RPC username
    "username": "azrelix",
    // password: The wallet RPC password
    "password": "Gnfh67gdmRTGvA5YB3UZhV5e5cPTTeneTTdnosLLD4bX"
  },

  // webserver: a collection of settings that pertain to the node.js express web framework (read more: https://www.npmjs.com/package/express)
  "webserver": {
    // port: Port # to configure the express webserver to listen for http requests on
    //       NOTE: Be sure to configure firewalls to allow traffic through this port or the explorer website may not be accessible remotely
    "port": 3001,
    // tls: a collection of settings that pertain to the TLS (Transport Layer Security) protocol feature (aka: ssl or https)
    "tls": {
      // enabled: Enable/disable TLS
      //          If set to true, the express webserver will be configured to use an https connection
      //          If set to false, all TLS features will be completely disabled
      "enabled": false,
      // port: Port # to configure the express webserver to listen for https requests on
      //       NOTE: Be sure to configure firewalls to allow traffic through this port or the explorer website may not be accessible remotely
      "port": 443,
      // cert_file: The absolute or relative path to the tls certificate file. Typically this file will be generated from certbot (read more: https://certbot.eff.org)
      "cert_file": "/etc/letsencrypt/live/domain-name-here/cert.pem",
      // chain_file: The absolute or relative path to the tls chain file. Typically this file will be generated from certbot (read more: https://certbot.eff.org)
      "chain_file": "/etc/letsencrypt/live/domain-name-here/chain.pem",
      // key_file: The absolute or relative path to the tls private key file. Typically this file will be generated from certbot (read more: https://certbot.eff.org)
      "key_file": "/etc/letsencrypt/live/domain-name-here/privkey.pem"
    },
    // cors: a collection of settings that pertain to the cors feature
    //       Cross-Origin Resource Sharing (CORS) support (read more: https://www.maxcdn.com/one/visual-glossary/cors/)
    //       Enable this setting to allow another website to access data from the explorer without violating the same-origin policy
    "cors": {
      // enabled: Enable/disable CORS
      //          If set to true, a new output header will be added to all http requests like this: Access-Control-Allow-Origin: <corsorigin>
      //          If set to false, the cors feature will be completely disabled
      "enabled": false,
      // corsorigin: Used to whitelist an http domain name for access to this explorer's resources
      //             The whitelisted domain must be in the format: https://example.com
      //             Specifying a "*" for the corsorigin will allow any domain to access the resources of this site
      "corsorigin": "*"
    }
  },

  // coin: a collection of settings that pertain to the cryptocurrency being explored
  "coin": {
    // name: Name of the cryptocurrency coin being explored. This value is displayed in the page header when the "shared_pages.page_header.home_link" setting is set to "coin".
    //       NOTE: This value acts as a unique identifier for data stored in mongo and therefore cannot be changed without re-syncing all existing data.
    "name": "Exor",
    // symbol: The cryptocurrency coin ticker/symbol value. This value is displayed anywhere that coin data is displayed including the index, address, block, movement, reward, richlist/top100 and tx pages
    "symbol": "EXOR"
  },

  // network_history: a collection of settings that controls saving of extra historical network data during a block sync
  "network_history": {
    // enabled: Enable/disable the saving of additional network history data (true/false)
    //          If set to false, historical data such as network hashrate and difficulty values will not be saved or available for network charts
    "enabled": true,
    // max_saved_records: The maximum # of blocks to save historical data for
    "max_saved_records": 120
  },

  /* Shared page settings */
 
  // shared_pages: a collection of settings that pertain to all webpages for the explorer
  "shared_pages": {
    // theme: Change the look & feel of the explorer with a unique theme. Uses bootswatch themes (https://bootswatch.com)
    //        Valid options: Cerulean, Cosmo, Cyborg, Darkly, Exor, Flatly, Journal, Litera, Lumen, Lux, Materia, Minty, Morph, Pulse, Quartz, Sandstone, Simplex, Sketchy, Slate, Solar, Spacelab, Superhero, United, Vapor, Yeti, Zephyr
    //        (see /public/css/themes for available themes)
    "theme": "Exor",
    // page_title: The text to display at the end of the HTML title tag and also displayed in the page header when the "shared_pages.page_header.home_link" setting is set to "title"
    "page_title": "eIquidus",
    // favicons: a collection of image or icon files that are displayed in a browser window/tab and serve as branding for your website. Their main purpose is to help visitors locate your page easier when they have multiple tabs open
    //          Modern favicon sizes were inspired by this web article: https://www.emergeinteractive.com/insights/detail/The-Essentials-of-FavIcons/
    //          NOTE: If any of the favicons are left blank or not set to a valid file, they will be disabled and unused
    "favicons": {
      // favicon32: The path to a 32x32 image or icon file
      //            NOTE: The path root is /public
      "favicon32": "favicon-32.png",
      // favicon128: The path to a 128x128 image or icon file
      //            NOTE: The path root is /public
      "favicon128": "favicon-128.png",
      // favicon180: The path to a 180x180 image or icon file
      //            NOTE: The path root is /public
      "favicon180": "favicon-180.png",
      // favicon192: The path to a 192x192 image or icon file
      //            NOTE: The path root is /public
      "favicon192": "favicon-192.png"
    },
    // logo: The path to an image file that is displayed on the api page as well as in one of the top panels when enabled
    //       This logo can also be displayed in the header when the "shared_pages.page_header.home_link" setting is set to "logo" and the "shared_pages.page_header.home_link_logo" setting is blank or an invalid file
    //       NOTE: The path root is /public
    //             The optimum logo size is 128x128 as the image will be forced to 128px high when displayed
    "logo": "/img/logo.png",
    // date_time: a collection of settings that pertain to the date and time values displayed in the explorer
    "date_time": {
      // display_format: The format to use when displaying date/time values
      //                 Date/time values are formatted using the Luxon library and must follow the correct syntax (read more: https://moment.github.io/luxon/docs/manual/formatting.html#table-of-tokens)
      //                 Ex: LLL dd, yyyy HH:mm:ss ZZZZ = May 27, 2019 22:04:11 UTC
      "display_format": "LLL dd, yyyy HH:mm:ss ZZZZ",
      // timezone: All dates and times are stored as UTC dates and can either be displayed in UTC format or else they can be displayed in the local timezone according to a user's web browser settings
      //           valid options: utc or local
      "timezone": "local",
      // enable_alt_timezone_tooltips: Determine if dates and times should have a mouse-over tooltip which displays an alternate timezone value
      //                               If set to true and the "shared_pages.date_time.timezone" setting is set to "utc" then enabling this option will display date/time tooltips in the local browser's timezone
      //                               If set to true and the "shared_pages.date_time.timezone" setting is set to "local" then enabling this option will display date/time tooltips in the UTC timezone
      //                               If set to false, no tooltips will be displayed for any date/time values
      "enable_alt_timezone_tooltips": false
    },
    // table_header_bgcolor: Change the background color of all table headers
    //                       valid options: light, dark or leave blank ( "" ) for default colors
    "table_header_bgcolor": "",
    // confirmations: Number of confirmations before a block or transaction can be considered valid
    //                if confirms are >= to this value then the block or tx is considered valid and shows up in green
    //                if confirms are < this value by more than 50% then the block or tx is considered unconfirmed and shows up in red
    //                if confirms are < this value by less than 50% then the block or tx is considered unconfirmed and shows up in orange
    "confirmations": 40,
    // difficulty: Determine which network difficulty value to display (valid options are: POW, POS or Hybrid)
    //             Some blockchains show different difficulty values depending on available POW/POS options:
    //             POW: Display the proof-of-work difficulty value
    //             POS: Display the proof-of-stake difficulty value
    //             Hybrid: Display both the proof-of-work and proof-of-stake difficulty values
    "difficulty": "POS",
    // show_hashrate: Determine whether to show network hash rate where applicable (true/false)
    //                If set to false, the /api/getnetworkhashps and /ext/getsummary apis will no longer show hash rate information, and the network hashrate chart will automatically be disabled
    "show_hashrate": true,
    // page_header: A collection of settings that pertain to the page header that is displayed at the top of all pages
    "page_header": {
      // menu: Valid options:
      //       top: display menu items horizontally across the top of the page
      //       side: display menu items vertically across the left-hand side of the page
      "menu": "side",
      // sticky_header: Determine whether page header "sticks" to top of page or not (true/false)
      "sticky_header": true,
      // bgcolor: Change the background color of the page header
      //          valid options: light, dark, primary, secondary, success, info, warning, danger or leave blank ( "" ) for default colors
      "bgcolor": "",
      // home_link: The home link setting determines what is displayed in the top-left corner of the header menu. Valid options:
      //            title: display "shared_pages.page_title" text setting
      //            coin: display "coin.name" text setting
      //            logo: display the "shared_pages.page_header.home_link_logo" image if it's set to a valid image, otherwise display the "shared_pages.logo" image
      "home_link": "logo",
      // home_link_logo: The path to a logo image that is displayed on page header when the "shared_pages.page_header.home_link" setting is set to "logo"
      //                 If the home_link_logo is left blank or not set to a valid file, the "shared_pages.page_header.home_link" = "logo" setting will automatically default to displaying the original "shared_pages.logo" instead of the "shared_pages.page_header.home_link_logo"
      //                 NOTE: The path root is /public
      "home_link_logo": "/img/header-logo.png",
      // home_link_logo_height: The max-height value of the "shared_pages.page_header.home_link" logo image (value in px, only valid if "shared_pages.page_header.home_link" = 'logo')
      "home_link_logo_height": 50,
      // panels: a collection of settings that pertain to the panels displayed on page header of all pages (NOTE: you can show/hide the entire group of panels on each page independently by changing the show_panels value in the settings for each page)
      //         A maximum of 5 panels can be shown across the top of the page at any time, so if more than 5 are enabled, only the first 5 will be shown
      "panels": {
        // network_panel: a collection of settings that pertain to the network panel which displays the current network hash rate (only applicable to POW coins)
        "network_panel": {
          // enabled: Enable/disable the network panel (true/false)
          //          If set to false, the network panel will be completely inaccessible
          "enabled": false,
          // display_order: Determine which order this panel is shown from 1-5
          //                1 = far left panel, 5 = far right panel
          //                The panel will be disabled with a value of 0
          "display_order": 0,
          // nethash: Determine how to acquire network hashrate. Valid options:
          //          getnetworkhashps: retrieved from getnetworkhashps rpc cmd
          //          netmhashps: retrieved from getmininginfo rpc cmd
          "nethash": "getnetworkhashps",
          // nethash_units: Determine which units should be used to display the network hashrate. Valid options:
          //                P: Display value in petahashes (PH/s)
          //                T: Display value in terahashes (TH/s)
          //                G: Display value in gigahashes (GH/s)
          //                M: Display value in megahashes (MH/s)
          //                K: Display value in kilohashes (KH/s)
          //                H: Display value in hashes (H/s)
          "nethash_units": "G"
        },
        // difficulty_panel: a collection of settings that pertain to the difficulty panel which displays the current proof-of-work difficulty (only applicable to POW coins)
        "difficulty_panel": {
          // enabled: Enable/disable the difficulty panel (true/false)
          //          If set to false, the difficulty panel will be completely inaccessible
          "enabled": false,
          // display_order: Determine which order this panel is shown from 1-5
          //                1 = far left panel, 5 = far right panel
          //                The panel will be disabled with a value of 0
          "display_order": 0
        },
        // masternodes_panel: a collection of settings that pertain to the masternode panel which displays a count of online and unreachable masternodes (only applicable to masternode coins)
        "masternodes_panel": {
          // enabled: Enable/disable the masternode panel (true/false)
          //          If set to false, the masternode panel will be completely inaccessible
          "enabled": true,
          // display_order: Determine which order this panel is shown from 1-5
          //                1 = far left panel, 5 = far right panel
          //                The panel will be disabled with a value of 0
          "display_order": 2
        },
        // coin_supply_panel: a collection of settings that pertain to the coin supply panel which displays the current circulating coin supply value
        "coin_supply_panel": {
          // enabled: Enable/disable the coin supply panel (true/false)
          //          If set to false, the coin supply panel will be completely inaccessible
          "enabled": true,
          // display_order: Determine which order this panel is shown from 1-5
          //                1 = far left panel, 5 = far right panel
          //                The panel will be disabled with a value of 0
          "display_order": 1
        },
        // price_panel: a collection of settings that pertain to the price panel which displays the current market price measured against the default market pair
        "price_panel": {
          // enabled: Enable/disable the price panel (true/false)
          //          If set to false, the price panel will be completely inaccessible
          "enabled": true,
          // display_order: Determine which order this panel is shown from 1-5
          //                1 = far left panel, 5 = far right panel
          //                The panel will be disabled with a value of 0
          "display_order": 4
        },
        // market_cap_panel: a collection of settings that pertain to the market cap panel which displays the current market cap value measured against the default market pair
        "market_cap_panel": {
          // enabled: Enable/disable the market cap panel (true/false)
          //          If set to false, the market cap panel will be completely inaccessible
          "enabled": true,
          // display_order: Determine which order this panel is shown from 1-5
          //                1 = far left panel, 5 = far right panel
          //                The panel will be disabled with a value of 0
          "display_order": 5
        },
        // logo_panel: a collection of settings that pertain to the logo panel which displays the "shared_pages.logo" image
        "logo_panel": {
          // enabled: Enable/disable the logo panel (true/false)
          //          If set to false, the logo panel will be completely inaccessible
          "enabled": true,
          // display_order: Determine which order this panel is shown from 1-5
          //                1 = far left panel, 5 = far right panel
          //                The panel will be disabled with a value of 0
          "display_order": 3
        }
      },
      // search: A collection of settings that pertain to the search feature
      "search": {
        // enabled: Enable/disable the ability to search the explorer website (true/false)
        //          If set to false, the explorer will not display a search box or respond to search queries
        "enabled": true,
        // position: Determine where the search box should appear on the website
        //           valid options: inside-header, below-header
        "position": "inside-header"
      },
      // page_title_image: A collection of settings that pertain to the page title image for each page
      "page_title_image": {
        // image_path: The path to an image file that is displayed in the header section of all pages next to the page title (NOTE: This image can be enabled/disabled on a per-page basis)
        //             NOTE: The path root is /public
        //             The optimum logo size is 48x48 as the image will be forced to this size when displayed
        "image_path": "/img/page-title-img.png",
        // enable_animation: Enable/disable the flip/spin animation on the page title image (true/false)
        "enable_animation": true
      },
      // network_charts: A collection of settings that pertain to the network hashrate and difficulty line charts displayed on page header of all pages
      //                 NOTE: You can independently show/hide individual charts by changing the show_nethash_chart and show_difficulty_chart values in the settings for each page
      //                       The "network_history.enabled" setting must be set to true for network charts to work correctly
      //                       If the "network_history.enabled" setting is false, all network charts will be completely disabled, regardless of their independent settings
      "network_charts": {
        // nethash_chart: A collection of settings that pertain to the network hashrate chart
        "nethash_chart": {
          // enabled: Enable/disable the network hashrate chart (true/false)
          //          If set to false, the network hashrate chart will be completely inaccessible
          //          NOTE: The `shared_pages.show_hashrate` option must be set to true or else the network hashrate chart will be completely inaccessible
          "enabled": true,
          // bgcolor: Change the background color of the network hashrate chart
          //          Set this to any valid html color
          //          Ex: "#ffffff" or "rgba(255, 255, 255, 1)" or "white"
          "bgcolor": "#ffffff",
          // line_color: Change the line color of the network hashrate chart
          //             Set this to any valid html color
          //             Ex: "#ffffff" or "rgba(255, 255, 255, 1)" or "white"
          "line_color": "rgba(54, 162, 235, 1)",
          // fill_color: Change the fill color of the network hashrate chart
          //             Set this to any valid html color
          //             Ex: "#ffffff" or "rgba(255, 255, 255, 1)" or "white"
          "fill_color": "rgba(54, 162, 235, 0.2)",
          // crosshair_color: Change the vertical crosshair line color of the network hashrate chart
          //             Set this to any valid html color
          //             Ex: "#ffffff" or "rgba(255, 255, 255, 1)" or "white"
          "crosshair_color": "#000000",
          // round_decimals: Set how many decimal places the hash rates are rounded to (Max 20)
          //                 NOTE: Set to a value of -1 to output the raw value without rounding
          "round_decimals": 3
        },
        // difficulty_chart: A collection of settings that pertain to the network difficulty chart
        "difficulty_chart": {
          // enabled: Enable/disable the network difficulty chart (true/false)
          //          If set to false, the network difficulty chart will be completely inaccessible
          "enabled": true,
          // bgcolor: Change the background color of the network difficulty chart
          //          Set this to any valid html color
          //          Ex: "#ffffff" or "rgba(255, 255, 255, 1)" or "white"
          "bgcolor": "#ffffff",
          // pow_line_color: Change the line color of the network difficulty chart for POW coins
          //                 Set this to any valid html color
          //                 Ex: "#ffffff" or "rgba(255, 255, 255, 1)" or "white"
          "pow_line_color": "rgba(255, 99, 132, 1)",
          // pow_fill_color: Change the fill color of the network difficulty chart for POW coins
          //                 Set this to any valid html color
          //                 Ex: "#ffffff" or "rgba(255, 255, 255, 1)" or "white"
          "pow_fill_color": "rgba(255, 99, 132, 0.2)",
          // pos_line_color: Change the line color of the network difficulty chart for POS coins
          //                 Set this to any valid html color
          //                 Ex: "#ffffff" or "rgba(255, 255, 255, 1)" or "white"
          "pos_line_color": "rgba(255, 161, 0, 1)",
          // pos_fill_color: Change the fill color of the network difficulty chart for POS coins
          //                 Set this to any valid html color
          //                 Ex: "#ffffff" or "rgba(255, 255, 255, 1)" or "white"
          "pos_fill_color": "rgba(255, 161, 0, 0.2)",
          // crosshair_color: Change the vertical crosshair line color of the network difficulty chart
          //             Set this to any valid html color
          //             Ex: "#ffffff" or "rgba(255, 255, 255, 1)" or "white"
          "crosshair_color": "#000000",
          // round_decimals: Set how many decimal places the difficulty values are rounded to (Max 20)
          //                 NOTE: Set to a value of -1 to output the raw value without rounding
          "round_decimals": 3
        },
        // reload_chart_seconds: The time in seconds to automatically reload the network chart data from the server
        //                       Set to 0 to disable automatic reloading of chart data
        "reload_chart_seconds": 60
      }
    },
    // page_footer: A collection of settings that pertain to the page footer that is displayed at the bottom of all pages
    "page_footer": {
      // sticky_footer: Determine whether the page footer "sticks" to bottom of the page or not (true/false)
      "sticky_footer": false,
      // bgcolor: Change the background color of the page footer
      //          valid options: light, dark, primary, secondary, success, info, warning, danger or leave blank ( "" ) for default colors
      "bgcolor": "",
      // Customize the height of the footer for the following screen sizes:
      // Mobile (0-575px)
      // Tablet (576-991px)
      // Desktop (>= 992px)
      // Supports any valid height value in pixels (Ex: "50px") or percent (Ex: "10%")
      // footer_height_desktop: Forced footer height value for desktop screens
      "footer_height_desktop": "50px",
      // footer_height_tablet: Forced footer height value for tablet screens
      "footer_height_tablet": "70px",
      // footer_height_mobile: Forced footer height value for mobile screens
      "footer_height_mobile": "70px",
      // social_links: a collection of settings that pertain to the social links on the page footer
      //               Add as many custom social links to be displayed in the page footer as desired
      //               For each entry you must fill in the image_path or fontawesome_class to determine the image or icon to show for the url link. It is not necessary to fill in both as only the 1st filled-in value will be used
      "social_links": [
        {
          // enabled: Enable/disable this particular social link (true/false)
          //          If set to false, the link will be completely inaccessible
          "enabled": true,
          // tooltip_text: Social link tooltips are always prefixed by the "coin.name" setting followed by the text from this tooltip_text setting. Ex: Exor Github
          "tooltip_text": "Github",
          // url: The exact url that the social link should navigate to
          "url": "https://github.com/team-exor",
          // fontawesome_class: A string of css classes, separated by spaces that can be used to display a fontawesome icon for this social link. See https://fontawesome.com/ for more info
          "fontawesome_class": "fab fa-github",
          // image_path: The path to an image file that will be displayed for this social link
          //             NOTE: The path root is /public
          "image_path": ""
        },
        {
          // enabled: Enable/disable this particular social link (true/false)
          //          If set to false, the link will be completely inaccessible
          "enabled": true,
          // tooltip_text: Social link tooltips are always prefixed by the "coin.name" setting followed by the text from this tooltip_text setting. Ex: Exor Twitter
          "tooltip_text": "Twitter",
          // url: The exact url that the social link should navigate to
          "url": "https://twitter.com/ExorOfficial",
          // fontawesome_class: A string of css classes, separated by spaces that can be used to display a fontawesome icon for this social link. See https://fontawesome.com/ for more info
          "fontawesome_class": "fab fa-twitter",
          // image_path: The path to an image file that will be displayed for this social link
          //             NOTE: The path root is /public
          "image_path": ""
        },
        {
          // enabled: Enable/disable this particular social link (true/false)
          //          If set to false, the link will be completely inaccessible
          "enabled": true,
          // tooltip_text: Social link tooltips are always prefixed by the "coin.name" setting followed by the text from this tooltip_text setting. Ex: Exor Discord
          "tooltip_text": "Discord",
          // url: The exact url that the social link should navigate to
          "url": "https://discord.gg/dSuGm3y",
          // fontawesome_class: A string of css classes, separated by spaces that can be used to display a fontawesome icon for this social link. See https://fontawesome.com/ for more info
          "fontawesome_class": "fab fa-discord",
          // image_path: The path to an image file that will be displayed for this social link
          //             NOTE: The path root is /public
          "image_path": ""
        },
        {
          // enabled: Enable/disable this particular social link (true/false)
          //          If set to false, the link will be completely inaccessible
          "enabled": true,
          // tooltip_text: Social link tooltips are always prefixed by the "coin.name" setting followed by the text from this tooltip_text setting. Ex: Exor Telegram
          "tooltip_text": "Telegram",
          // url: The exact url that the social link should navigate to
          "url": "https://t.me/Exorofficial",
          // fontawesome_class: A string of css classes, separated by spaces that can be used to display a fontawesome icon for this social link. See https://fontawesome.com/ for more info
          "fontawesome_class": "fab fa-telegram",
          // image_path: The path to an image file that will be displayed for this social link
          //             NOTE: The path root is /public
          "image_path": ""
        },
        {
          // enabled: Enable/disable this particular social link (true/false)
          //          If set to false, the link will be completely inaccessible
          "enabled": true,
          // tooltip_text: Social link tooltips are always prefixed by the "coin.name" setting followed by the text from this tooltip_text setting. Ex: Exor Website
          "tooltip_text": "Website",
          // url: The exact url that the social link should navigate to
          "url": "https://exor.io",
          // fontawesome_class: A string of css classes, separated by spaces that can be used to display a fontawesome icon for this social link. See https://fontawesome.com/ for more info
          "fontawesome_class": "",
          // image_path: The path to an image file that will be displayed for this social link
          //             NOTE: The path root is /public
          "image_path": "/img/external.png"
        },
        {
          // enabled: Enable/disable this particular social link (true/false)
          //          If set to false, the link will be completely inaccessible
          "enabled": true,
          // tooltip_text: Social link tooltips are always prefixed by the "coin.name" setting followed by the text from this tooltip_text setting. Ex: Exor Coingecko
          "tooltip_text": "Coingecko",
          // url: The exact url that the social link should navigate to
          "url": "https://www.coingecko.com/en/coins/exor",
          // fontawesome_class: A string of css classes, separated by spaces that can be used to display a fontawesome icon for this social link. See https://fontawesome.com/ for more info
          "fontawesome_class": "",
          // image_path: The path to an image file that will be displayed for this social link
          //             NOTE: The path root is /public
          "image_path": "/img/coingecko.png"
        }
      ],
      // Customize the height of the social media links in the footer for the following screen sizes:
      // Mobile (0-575px)
      // Tablet (576-991px)
      // Desktop (>= 992px)
      // This is a percentage value and must be a positive number between 1-100
      // social_link_percent_height_desktop: Forced social link height percentage value for desktop screens
      "social_link_percent_height_desktop": 70,
      // social_link_percent_height_tablet: Forced social link height percentage value for tablet screens
      "social_link_percent_height_tablet": 42,
      // social_link_percent_height_mobile: Forced social link height percentage value for mobile screens
      "social_link_percent_height_mobile": 40
    }
  },

  /* Built-in Pages (cannot be disabled) */

  // index_page: a collection of settings that pertain to the index page
  "index_page": {
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": true,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": true,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": true,
    // page_header: a collection of settings that pertain to the index page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.ex_title" (true/false)
      "show_title": true,
      // show_last_updated: Determine whether to show a label below the page title with the last updated date (true/false)
      "show_last_updated": true,
      // show_description: Determine whether to show the page description as defined in "locale.ex_description" (true/false)
      "show_description": true
    },
    // transaction_table: a collection of settings that pertain to the transaction table on the index page
    //                    Table data is populated via the /ext/getlasttxs api
    "transaction_table": {
      // page_length_options: An array of page length options that determine how many items/records to display in the table at any given time
      //                      NOTE: Page length options will be limited based on the max_items_per_query for the /ext/getlasttxs api
      "page_length_options": [ 10, 25, 50, 75, 100, 250, 500, 1000 ],
      // items_per_page: The default amount of items/records to display in the table at any given time
      "items_per_page": 10,
      // reload_table_seconds: The time in seconds to automatically reload the table data from the server
      //                       Set to 0 to disable automatic reloading of table data
      "reload_table_seconds": 60
    }
  },

  // block_page: a collection of settings that pertain to the block page
  "block_page": {
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the block page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.block_title" (true/false)
      "show_title": true,
      // show_description: Determine whether to show the page description as defined in "locale.block_description" (true/false)
      "show_description": true
    },
    // genesis_block: Your coins genesis block hash is used to determine the beginning of the blockchain
    //                For many bitcoin clones you can use the following cmd to get the block hash of the genesis block: coin-cli getblockhash 0
    //                NOTE: If this value is not entered correctly it will not be possible for the explorer to find or navigate to the genesis block, neither via block or transaction hash
    "genesis_block": "00014f36c648cdbc750f7dd28487a23cd9e0b0f95f5fccc5b5d01367e3f57469"
  },

  // transaction_page: a collection of settings that pertain to the transaction/tx page
  "transaction_page": {
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the transaction/tx page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.tx_title" (true/false)
      "show_title": true,
      // show_description: Determine whether to show the page description as defined in "locale.tx_description" (true/false)
      "show_description": true
    },
    // genesis_tx: Your coins genesis transaction hash is used to determine the beginning of the blockchain
    //             For many bitcoin clones you can use the following cmd to find the list of transaction hashes from the genesis block: coin-cli getblock 00014f36c648cdbc750f7dd28487a23cd9e0b0f95f5fccc5b5d01367e3f57469
    //             NOTE: If this value is not entered correctly it will not be possible for the explorer to find or navigate to the genesis block by searching for the genesis transaction hash
    "genesis_tx": "dd1d332ad2d8d8f49195056d482ae3c96fd2d16e9d166413b27ca7f19775644c",
    // show_op_return: Determine whether to decode and show OP_RETURN values that may have been embeddeded in a transaction
    //                 NOTE: Enabling this option will require a full reindex of the blockchain data before previously synced transactions can display the OP_RETURN value
    "show_op_return": false
  },

  // address_page: a collection of settings that pertain to the address page
  "address_page": {
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the address page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.a_title" (true/false)
      "show_title": true,
      // show_description: Determine whether to show the page description as defined in "locale.a_description" (true/false)
      "show_description": true
    },
    // show_sent_received: Determine whether to show Total Sent and Total Received columns at the top of the address page
    "show_sent_received": false,
    // enable_hidden_address_view: Determine whether to allow viewing the special 'hidden_address' wallet address which is populated anytime a private/hidden wallet address is involved in a transaction
    //                              NOTE: Enabling this option will add hyperlinks to all Hidden Addresses and allow viewing of the /address/hidden_address page
    //                                    Disabling this option will display all Hidden Addresses in plain-text without a hyperlink and visiting the /address/hidden_address page will result in a 404 error
    "enable_hidden_address_view": false,
    // enable_unknown_address_view: Determine whether to allow viewing the special 'unknown_address' wallet address which is populated anytime a wallet address cannot be deciphered
    //                              NOTE: Enabling this option will add hyperlinks to all Unknown Addresses and allow viewing of the /address/unknown_address page
    //                                    Disabling this option will display all Unknown Addresses in plain-text without a hyperlink and visiting the /address/unknown_address page will result in a 404 error
    "enable_unknown_address_view": false,
    // history_table: a collection of settings that pertain to the history table on the address page
    //                Table data is populated via the /ext/getaddresstxs api
    "history_table": {
      // page_length_options: An array of page length options that determine how many items/records to display in the table at any given time
      //                      NOTE: Page length options will be limited based on the max_items_per_query for the /ext/getaddresstxs api
      "page_length_options": [ 10, 25, 50, 75, 100, 250, 500, 1000 ],
      // items_per_page: The default amount of items/records to display in the table at any given time
      "items_per_page": 50
    }
  },

  // error_page: a collection of settings that pertain to the error page
  "error_page": {
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the error page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.error_title" (true/false)
      "show_title": true,
      // show_description: Determine whether to show the page description as defined in "locale.error_description" (true/false)
      "show_description": true
    }
  },

  /* Additional Pages (can be enabled/disabled via settings) */

  // masternodes_page: a collection of settings that pertain to the masternodes page
  "masternodes_page": {
    // enabled: Enable/disable the masternodes page (true/false)
    //          If set to false, the masternodes page will be completely inaccessible
    "enabled": true,
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the masternodes page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.mn_title" (true/false)
      "show_title": true,
      // show_last_updated: Determine whether to show a label below the page title with the last updated date (true/false)
      "show_last_updated": true,
      // show_description: Determine whether to show the page description as defined in "locale.mn_description" (true/false)
      "show_description": true
    },
    // masternode_table: a collection of settings that pertain to the masternode table on the masternodes page
    //                   Table data is populated via the /ext/getmasternodelist api
    "masternode_table": {
      // page_length_options: An array of page length options that determine how many items/records to display in the table at any given time
      "page_length_options": [ 10, 25, 50, 75, 100, 250, 500, 1000 ],
      // items_per_page: The default amount of items/records to display in the table at any given time
      "items_per_page": 10
    }
  },

  // movement_page: a collection of settings that pertain to the movement page
  "movement_page": {
    // enabled: Enable/disable the movement page (true/false)
    //          If set to false, the movement page will be completely inaccessible
    "enabled": true,
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the movement page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.move_title" (true/false)
      "show_title": true,
      // show_last_updated: Determine whether to show a label below the page title with the last updated date (true/false)
      "show_last_updated": true,
      // show_description: Determine whether to show the page description as defined in "locale.move_description" (true/false)
      "show_description": true
    },
    // movement_table: a collection of settings that pertain to the movement table on the movement page
    //                 Table data is populated via the /ext/getlasttxs api
    "movement_table": {
      // page_length_options: An array of page length options that determine how many items/records to display in the table at any given time
      //                      NOTE: Page length options will be limited based on the max_items_per_query for the /ext/getlasttxs api
      "page_length_options": [ 10, 25, 50, 75, 100, 250, 500, 1000 ],
      // items_per_page: The default amount of items/records to display in the table at any given time
      "items_per_page": 10,
      // reload_table_seconds: The time in seconds to automatically reload the table data from the server
      //                       Set to 0 to disable automatic reloading of table data
      "reload_table_seconds": 45,
      // min_amount: The minimum number of coins that need to be received in a single transaction to show up on the movement page
      "min_amount": 5000,
      // low low_warning_flag: Flag all transactions in yellow/orange that are sent with coin amounts above this value
      "low_warning_flag": 50000,
      // high_warning_flag: Flag all transactions in red that are sent with coin amounts above this value
      "high_warning_flag": 100000
    }
  },

  // network_page: a collection of settings that pertain to the network page
  "network_page": {
    // enabled: Enable/disable the network page (true/false)
    //          If set to false, the network page will be completely inaccessible
    "enabled": true,
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the network page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.net_title" (true/false)
      "show_title": true,
      // show_last_updated: Determine whether to show a label below the page title with the last updated date (true/false)
      "show_last_updated": true,
      // show_description: Determine whether to show the page description as defined in "locale.net_description" (true/false)
      "show_description": true
    },
    // connections_table: a collection of settings that pertain to the connections table on the network page
    //                    Table data is populated via the /ext/getnetworkpeers api
    "connections_table": {
      // page_length_options: An array of page length options that determine how many items/records to display in the table at any given time
      "page_length_options": [ 10, 25, 50, 75, 100 ],
      // items_per_page: The default amount of items/records to display in the table at any given time
      "items_per_page": 10,
      // port_filter: Specify a port number to only allow showing peers on the selected port.
      //              Set this value to 0 to show all peers on any port.
      //              Set this value to -1 to hide the port column. NOTE: If the -1 value is set then instead of showing multiple duplicate rows for ip addresses that connected on different ports, only a single row will be shown per unique ip address
      "port_filter": -1,
      // hide_protocols: An array of protocol numbers that will be filtered out of the table results
      //                 If a peer connects to the explorer wallet with one of these protocol numbers, that record will not be displayed in this table
      //                 Add as many protocol values as necessary in the following format: [ 0, 70803, 70819 ]
      "hide_protocols": [ ]
    },
    // addnodes_table: a collection of settings that pertain to the add nodes table on the network page
    //                 Table data is populated via the /ext/getnetworkpeers api
    "addnodes_table": {
      // page_length_options: An array of page length options that determine how many items/records to display in the table at any given time
      "page_length_options": [ 10, 25, 50, 75, 100 ],
      // items_per_page: The default amount of items/records to display in the table at any given time
      "items_per_page": 10,
      // port_filter: Specify a port number to only allow showing peers on the selected port.
      //              Set this value to 0 to show all peers on any port.
      //              Set this value to -1 to prevent the port portion of the addnode string from being displayed. NOTE: If the -1 value is set then instead of showing multiple duplicate rows for ip addresses that connected on different ports, only a single row will be shown per unique ip address
      "port_filter": -1,
      // hide_protocols: An array of protocol numbers that will be filtered out of the table results
      //                 If a peer connects to the explorer wallet with one of these protocol numbers, that record will not be displayed in this table
      //                 Add as many protocol values as necessary in the following format: [ 0, 70803, 70819 ]
      "hide_protocols": [ ]
    },
    // onetry_table: a collection of settings that pertain to the one try table on the network page
    //               Table data is populated via the /ext/getnetworkpeers api
    "onetry_table": {
      // page_length_options: An array of page length options that determine how many items/records to display in the table at any given time
      "page_length_options": [ 10, 25, 50, 75, 100 ],
      // items_per_page: The default amount of items/records to display in the table at any given time
      "items_per_page": 10,
      // port_filter: Specify a port number to only allow showing peers on the selected port.
      //              Set this value to 0 to show all peers on any port.
      //              Set this value to -1 to prevent the port portion of the onetry string from being displayed. NOTE: If the -1 value is set then instead of showing multiple duplicate rows for ip addresses that connected on different ports, only a single row will be shown per unique ip address
      "port_filter": -1,
      // hide_protocols: An array of protocol numbers that will be filtered out of the table results
      //                 If a peer connects to the explorer wallet with one of these protocol numbers, that record will not be displayed in this table
      //                 Add as many protocol values as necessary in the following format: [ 0, 70803, 70819 ]
      "hide_protocols": [ ]
    }
  },

  // richlist_page: a collection of settings that pertain to the richlist/top100 page
  "richlist_page": {
    // enabled: Enable/disable the richlist/top100 page (true/false)
    //          If set to false, the richlist/top100 page will be completely inaccessible
    "enabled": true,
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the richlist/top100 page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.rl_title" (true/false)
      "show_title": true,
      // show_last_updated: Determine whether to show a label below the page title with the last updated date (true/false)
      "show_last_updated": true,
      // show_description: Determine whether to show the page description as defined in "locale.rl_description" (true/false)
      "show_description": true
    },
    // show_current_balance: Determine whether to show the top 100 list of wallet addresses that currently have the most coins in a single wallet (true/false)
    "show_current_balance": true,
    // show_received_coins: Determine whether to show the top 100 list of wallet addresses that have the highest total number of coins received based on adding up all received transactions (true/false)
    "show_received_coins": true,
    // wealth_distribution: a collection of settings that pertain to the wealth distribution section of the richlist/top100 page
    //                      This section features a summary table with the breakdown of coins owned by the top 1-25, 26-50, 51-75, 76-100, 101+ wallets and all burned coins plus an associated pie chart
    "wealth_distribution": {
      // show_distribution_table: Show/hide the wealth distribution summary table with the breakdown of coins owned by the top 1-25, 26-50, 51-75, 76-100, 101+ wallets and all burned coins (true/false)
      //                          If set to false, the wealth distribution table will be completely hidden
      "show_distribution_table": true,
      // show_distribution_chart: Show/hide the wealth distribution pie chart with the breakdown of coins owned by the top 1-25, 26-50, 51-75, 76-100, 101+ wallets and all burned coins (true/false)
      //                          If set to false, the wealth distribution pie chart will be completely hidden
      "show_distribution_chart": true,
      // colors: An array of html color codes to represent the top 100 groupings in the wealth distribution table and pie chart
      //         From left-to-right the 6 colors are represented as the following: "top 1-25", "top 26-50", "top 51-75", "top 76-100", "101+" and "burned coins" - which is used if the include_burned_coins_in_distribution setting is enabled
      "colors": [ "#e73cbd", "#00bc8c", "#3498db", "#e3ce3e", "#adb5bd", "#e74c3c" ]
    },
    // burned_coins: a collection of settings that pertain to the wallet addresses that should not appear in the richlist/top100 page
    //               NOTE: These settings won't take effect until after running (and completing) a normal index sync or reindex-rich
    "burned_coins": {
      // addresses: An array of wallet addresses to exclude from the richlist/top100 page
      //            Use this setting to prevent specific wallet addresses from being displayed in the rich list and wealth distribution chart sections
      //            These wallet addresses will be completely removed from the rich list, but will still be viewable and accessible via the rest of the explorer pages as per normal
      //            Add as many wallet addresses as necessary in the following format: [ "EPUzEEHa45Rsn87WBos6SqkZZ8GrsfgvtZ", "EUzgat1r5AFyoTXK5WgTyM8kABPJY1SX7E" ]
      "addresses": [ "EXorBurnAddressXXXXXXXXXXXXXW7cDZQ" ],
      // include_burned_coins_in_distribution: Determine whether to include burned coins in the wealth distribution section or not
      //                                       This setting will need to be changed depending on whether your main coin supply value already has the burned coins removed from its total or not
      //                                       Set this value to false if your blockchain already has a mechanism for removing burned coins from the total supply and the burned coins will not be included in the distribution totals
      //                                       Set this value to true if your blockchain still has the burned coins included in its total supply and a 'Burned Coins' section will be added to the distribution table and chart
      "include_burned_coins_in_distribution": false
    }
  },

  // markets_page: a collection of settings that pertain to the markets page
  "markets_page": {
    // enabled: Enable/disable the markets pages (true/false)
    //          If set to false, all market pages will be completely inaccessible
    "enabled": false,
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the markets page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.mkt_title" (true/false)
      "show_title": true,
      // show_last_updated: Determine whether to show a label below the page title with the last updated date (true/false)
      "show_last_updated": true,
      // show_exchange_url: Determine whether to show an external link to the exchange trading page for the selected pair (true/false)
      "show_exchange_url": true,
      // show_description: Determine whether to show the page description as defined in "locale.mkt_description" (true/false)
      "show_description": true
    },
    // show_market_dropdown_menu: Determine whether the markets menu in the page header will function as a dropdown or a single-click menu item that opens the default market (true/false)
    //                            If set to true, the markets header menu will function as a dropdown that allows selecting from all available markets
    //                            If set to false, the markets header menu will function as a single-click menu item that opens the default market only
    //                            NOTE: The dropdown will only work when 2 or more markets are enabled, otherwise it will default to a single-click menu item automatically
    "show_market_dropdown_menu": true,
    // show_market_select: Determine whether all market pages will display a clickable list of enabled markets near the top of the page for quick selection or not (true/false)
    //                     If set to true, then all market pages will display a clickable list of enabled markets near the top of the page for quick selection
    //                     If set to false, then no market select box will be shown on market pages
    //                     NOTE: The market select box will only be visible when 2 or more markets are enabled, otherwise it will be hidden automatically
    "show_market_select": true,
    // exchanges: Enable/disable api integration with any of the available built-in exchanges
    //            Enabled exchanges display a number of exchange-related metrics including market summary, 24 hour chart, most recent buy/sell orders and latest trade history
    //            Supported exchanges: altmarkets, bittrex, bleutrade, crex, dex-trade, freiexchange/freixlite, poloniex, southxchange, stex, txbit, unnamed, yobit
    "exchanges": {
      // altmarkets: a collection of settings that pertain to the altmarkets exchange
      "altmarkets": {
        // enabled: Enable/disable the altmarkets exchange (true/false)
        //          If set to false, the altmarkets page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC", "LTC/ETH" ]
      },
      // bittrex: a collection of settings that pertain to the bittrex exchange
      "bittrex": {
        // enabled: Enable/disable the bittrex exchange (true/false)
        //          If set to false, the bittrex page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC" ]
      },
      // bleutrade: a collection of settings that pertain to the bleutrade exchange
      "bleutrade": {
        // enabled: Enable/disable the bleutrade exchange (true/false)
        //          If set to false, the bleutrade page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC" ]
      },
      // crex: a collection of settings that pertain to the crex exchange
      "crex": {
        // enabled: Enable/disable the crex exchange (true/false)
        //          If set to false, the crex page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC" ]
      },
      // dextrade: a collection of settings that pertain to the dex-trade exchange
      "dextrade": {
        // enabled: Enable/disable the dex-trade exchange (true/false)
        //          If set to false, the dex-trade page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC" ]
      },
      // freiexchange: a collection of settings that pertain to the freiexchange/freixlite exchange
      //               NOTE: freiexchange does not display a 24-hour chart due to a lack of OHLCV api data
      "freiexchange": {
        // enabled: Enable/disable the freiexchange/freixlite exchange (true/false)
        //          If set to false, the freiexchange/freixlite page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC" ]
      },
      // poloniex: a collection of settings that pertain to the poloniex exchange
      "poloniex": {
        // enabled: Enable/disable the poloniex exchange (true/false)
        //          If set to false, the poloniex page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC" ]
      },
      // southxchange: a collection of settings that pertain to the southxchange exchange
      "southxchange": {
        // enabled: Enable/disable the southxchange exchange (true/false)
        //          If set to false, the southxchange page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC" ]
      },
      // stex: a collection of settings that pertain to the stex exchange
      "stex": {
        // enabled: Enable/disable the stex exchange (true/false)
        //          If set to false, the stex page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC", "LTC/USDT" ]
      },
      // txbit: a collection of settings that pertain to the txbit exchange
      //        NOTE: txbit does not display a 24-hour chart due to a lack of OHLCV api data
      "txbit": {
        // enabled: Enable/disable the txbit exchange (true/false)
        //          If set to false, the txbit page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/ETH" ]
      },
      // unnamed: a collection of settings that pertain to the unnamed exchange
      "unnamed": {
        // enabled: Enable/disable the unnamed exchange (true/false)
        //          If set to false, the unnamed page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC" ]
      },
      // yobit: a collection of settings that pertain to the yobit exchange
      //        NOTE: yobit does not display a 24-hour chart due to a lack of OHLCV api data
      "yobit": {
        // enabled: Enable/disable the yobit exchange (true/false)
        //          If set to false, the yobit page will be completely inaccessible and no market data will be downloaded for this exchange
        "enabled": false,
        // trading_pairs: An array of market trading pair symbols
        //                You can add as many trading pairs as necessary
        //                All entries must specify your coins symbol as it is displayed on the exchange, followed by a slash (/) and ending with the symbol of the market or asset that is being traded against
        //                Ex: "LTC/BTC", "LTC/USDT", "LTC/ETH"
        "trading_pairs": [ "LTC/BTC" ]
      }
    },
    // default_exchange: a collection of settings that pertain to the default exchange
    //                   When the "show_market_dropdown_menu" setting is disabled, the market header menu will navigate directly to the default exchange page
    //                   The default exchange is also used to determine the last market price
    //                   If left blank or filled out incorrectly, the first enabled exchange and trading pair will be used as the default exchange
    "default_exchange": {
      // exchange_name: The name of the default exchange must exactly match the name of an exchange in the "exchanges" setting above
      //                See the list of supported exchanges above for the list of supported exchange names
      "exchange_name": "stex",
      // trading_pair: The name of the trading pair for the default exchange must exactly match the name of a trading pair from the "exchanges" setting above
      "trading_pair": "LTC/BTC"
    }
  },

  // api_page: a collection of settings that pertain to the api page
  "api_page": {
    // enabled: Enable/disable the public api system (true/false)
    //          If set to false, the entire api page will be disabled and all public api endpoints will show a "This method is disabled" msg when called regardless of their individual enabled statuses
    "enabled": true,
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the api page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.api_title" (true/false)
      "show_title": true,
      // show_description: Determine whether to show the page description as defined in "locale.api_description" (true/false)
      "show_description": true
    },
    // show_logo: Determine whether to show the `shared_pages.logo` image at the top of the API Documentation panel or not
    "show_logo": true,
    // sample_data: a collection of settings that pertain to the sample data that is used to display example api links to real data
    "sample_data": {
      // blockindex: This value can be any valid block height number from your coins blockchain
      //             NOTE: This value is only used to build example api links on the api page from the /api/getblockhash api for example
      "blockindex": 64152,
      // blockhash: This value can be any valid block hash from your coins blockchain
      //            For many bitcoin clones you can use the following cmd to get the block hash for a given block height: coin-cli getblockhash 64152
      //            NOTE: This value is only used to build example api links on the api page from the /api/getblock api for example
      "blockhash": "775d67da29dd6553268061f86368d06654944dd5d5c61db4c97e4c7960c11a74",
      // txhash: This value can be any valid transaction hash from your coins blockchain
      //         For many bitcoin clones you can use the following cmd to find a list of tx hashes for a given block hash: coin-cli getblock 000000001ba119a0f6d49ebabd83343b125d7ee3d3184b1b41d6a7f2051153eb
      //         NOTE: This value is only used to build example api links on the api page from the /api/getrawtransaction api for example
      "txhash": "6cb3babd256de253f926f10bc8574dadf0a3e2fc8380107b81eb07c67d1e73ed",
      // address: This value can be any valid wallet address from your coins blockchain that has received at least 1 or more coin transactions
      //          NOTE: This value is only used to build example api links on the api page from the /ext/getaddress api for example
      "address": "ELvb8AZRgHmdsDnD1HYFwbSY4UkPhoECCW"
    },
    // public_apis: a collection of settings that pertain to the public api command system
    //              NOTE: Disabling any of these apis will remove the api definition from the api page and will return a "This method is disabled" msg if the api endpoint is called.
    //                    Some public apis are used internally by the explorer such as the /ext/getlasttxs api and even if disabled from here the internal api will still continue to function.
    "public_apis": {
      // rpc: a collection of settings that pertain to the rpc cmd apis that are retrieved from the coin wallet rpc api
      "rpc": {
        // getdifficulty: a collection of settings that pertain to the /api/getdifficulty api endpoint
        //                Returns the proof-of-work difficulty as a multiple of the minimum difficulty
        //                NOTE: This api is not used internally and is therefore only publicly available
        "getdifficulty": {
          // enabled: Enable/disable the /api/getdifficulty api endpoint (true/false)
          //          If set to false, the /api/getdifficulty api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getconnectioncount: a collection of settings that pertain to the /api/getconnectioncount api endpoint
        //                     Returns the number of connections to other nodes
        //                     NOTE: This api is not used internally and is therefore only publicly available
        "getconnectioncount": {
          // enabled: Enable/disable the /api/getconnectioncount api endpoint (true/false)
          //          If set to false, the /api/getconnectioncount api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getblockcount: a collection of settings that pertain to the /api/getblockcount api endpoint
        //                Returns the number of blocks in the longest blockchain
        //                NOTE: This api is not used internally and is therefore only publicly available
        "getblockcount": {
          // enabled: Enable/disable the /api/getblockcount api endpoint (true/false)
          //          If set to false, the /api/getblockcount api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getblockhash: a collection of settings that pertain to the /api/getblockhash api endpoint
        //               Returns hash of block in best-block-chain at height provided
        //               NOTE: This api is not used internally and is therefore only publicly available
        "getblockhash": {
          // enabled: Enable/disable the /api/getblockhash api endpoint (true/false)
          //          If set to false, the /api/getblockhash api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getblock: a collection of settings that pertain to the /api/getblock api endpoint
        //           Returns an object with information about the block
        //           NOTE: This api is not used internally except for a link on the block page to view the raw block data, which will be automatically removed/hidden when this api is disabled
        "getblock": {
          // enabled: Enable/disable the /api/getblock api endpoint (true/false)
          //          If set to false, the /api/getblock api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getrawtransaction: a collection of settings that pertain to the /api/getrawtransaction api endpoint
        //                    Returns raw transaction data
        //                    NOTE: This api is not used internally except for a link on the transaction/tx page to view the raw transaction data, which will be automatically removed/hidden when this api is disabled
        "getrawtransaction": {
          // enabled: Enable/disable the /api/getrawtransaction api endpoint (true/false)
          //          If set to false, the /api/getrawtransaction api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getnetworkhashps: a collection of settings that pertain to the /api/getnetworkhashps api endpoint
        //                   Returns the estimated network hashes per second
        //                   NOTE: This api is not used internally and is therefore only publicly available
        "getnetworkhashps": {
          // enabled: Enable/disable the /api/getnetworkhashps api endpoint (true/false)
          //          If set to false, the /api/getnetworkhashps api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getvotelist: a collection of settings that pertain to the /api/getvotelist api endpoint
        //              Returns an object with details regarding the current vote list
        //              NOTE: This api is not used internally and is therefore only publicly available
        "getvotelist": {
          // enabled: Enable/disable the /api/getvotelist api endpoint (true/false)
          //          If set to false, the /api/getvotelist api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getmasternodecount: a collection of settings that pertain to the /api/getmasternodecount api endpoint
        //                     Returns a json object containing the total number of masternodes on the network (only applicable to masternode coins)
        //                     NOTE: This api is not used internally and is therefore only publicly available
        "getmasternodecount": {
          // enabled: Enable/disable the /api/getmasternodecount api endpoint (true/false)
          //          If set to false, the /api/getmasternodecount api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        }
      },
      // ext: a collection of settings that pertain to the extended apis that are retrieved from local mongo database collection
      "ext": {
        // getmoneysupply: a collection of settings that pertain to the /ext/getmoneysupply api endpoint
        //                 Returns current money supply
        //                 NOTE: This api is not used internally and is therefore only publicly available
        "getmoneysupply": {
          // enabled: Enable/disable the /ext/getmoneysupply api endpoint (true/false)
          //          If set to false, the /ext/getmoneysupply api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getdistribution: a collection of settings that pertain to the /ext/getdistribution api endpoint
        //                  Returns wealth distribution stats
        //                  NOTE: This api is not used internally and is therefore only publicly available
        "getdistribution": {
          // enabled: Enable/disable the /ext/getdistribution api endpoint (true/false)
          //          If set to false, the /ext/getdistribution api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getaddress: a collection of settings that pertain to the /ext/getaddress api endpoint
        //             Returns information for given address
        //             NOTE: This api is not used internally and is therefore only publicly available
        "getaddress": {
          // enabled: Enable/disable the /ext/getaddress api endpoint (true/false)
          //          If set to false, the /ext/getaddress api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getaddresstxs: a collection of settings that pertain to the /ext/getaddresstxs api endpoint
        //                Returns transactions for a wallet address starting from a particular offset
        //                NOTE: This api is used internally via ajax call to populate the Address History table on the address page. Disabling the api from here will not stop the Address History table from displaying data
        "getaddresstxs": {
          // enabled: Enable/disable the /ext/getaddresstxs api endpoint (true/false)
          //          If set to false, the /ext/getaddresstxs api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly) but the api will still be available internally to the explorer
          "enabled": true,
          // max_items_per_query: The maximum # of transactions that can be returned from the /ext/getaddresstxs api endpoint in a single call
          "max_items_per_query": 100
        },
        // gettx: a collection of settings that pertain to the /ext/gettx api endpoint
        //        Returns information for given tx hash
        //        NOTE: This api is not used internally and is therefore only publicly available
        "gettx": {
          // enabled: Enable/disable the /ext/gettx api endpoint (true/false)
          //          If set to false, the /ext/gettx api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getbalance: a collection of settings that pertain to the /ext/getbalance api endpoint
        //             Returns current balance of given address
        //             NOTE: This api is not used internally and is therefore only publicly available
        "getbalance": {
          // enabled: Enable/disable the /ext/getbalance api endpoint (true/false)
          //          If set to false, the /ext/getbalance api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getlasttxs: a collection of settings that pertain to the /ext/getlasttxs api endpoint
        //             Returns transactions greater than a specific number of coins, starting from a particular offset
        //             NOTE: This api is used internally via ajax call to populate the Transaction tables on the index and movement pages. Disabling the api from here will not stop the Transaction tables from displaying data
        "getlasttxs": {
          // enabled: Enable/disable the /ext/getlasttxs api endpoint (true/false)
          //          If set to false, the /ext/getlasttxs api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly) but the api will still be available internally to the explorer
          "enabled": true,
          // max_items_per_query: The maximum # of transactions that can be returned from the /ext/getlasttxs api endpoint in a single call
          "max_items_per_query": 100
        },
        // getcurrentprice: a collection of settings that pertain to the /ext/getcurrentprice api endpoint
        //                  Returns last known exchange price
        //                  NOTE: This api is not used internally and is therefore only publicly available
        "getcurrentprice": {
          // enabled: Enable/disable the /ext/getcurrentprice api endpoint (true/false)
          //          If set to false, the /ext/getcurrentprice api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getnetworkpeers: a collection of settings that pertain to the /ext/getnetworkpeers api endpoint
        //                  Returns the list of network peers that have connected to the explorer node in the last 24 hours
        //                  NOTE: This api is used internally via ajax call to populate the connections, add nodes and one try tables on the network page. Disabling the api from here will not stop the network page tables from displaying data
        "getnetworkpeers": {
          // enabled: Enable/disable the /ext/getnetworkpeers api endpoint (true/false)
          //          If set to false, the /ext/getnetworkpeers api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly) but the api will still be available internally to the explorer
          "enabled": true
        },
        // getbasicstats: a collection of settings that pertain to the /ext/getbasicstats api endpoint
        //                Returns basic statistics about the coin including: block count, circulating supply, USD price, default market price and # of masternodes (# of masternodes is only applicable to masternode coins)
        //                NOTE: This api is not used internally and is therefore only publicly available
        "getbasicstats": {
          // enabled: Enable/disable the /ext/getbasicstats api endpoint (true/false)
          //          If set to false, the /ext/getbasicstats api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getsummary: a collection of settings that pertain to the /ext/getsummary api endpoint
        //             Returns a summary of coin data including: difficulty, hybrid difficulty, circulating supply, hash rate, default market price, network connection count, block count, count of online masternodes and count of offline masternodes (masternode counts are only applicable to masternode coins)
        //             NOTE: This api is used internally via ajax call to populate many of the panel boxes that are found at the top of all pages. Disabling the api from here will not stop the panel boxes from displaying data
        "getsummary": {
          // enabled: Enable/disable the /ext/getsummary api endpoint (true/false)
          //          If set to false, the /ext/getsummary api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly) but the api will still be available internally to the explorer
          "enabled": true
        },
        // getmasternodelist: a collection of settings that pertain to the /ext/getmasternodelist api endpoint
        //                    Returns the complete list of masternodes on the network (only applicable to masternode coins)
        //                    NOTE: This api is used internally via ajax call to populate the Masternodes table on the masternodes page. Disabling the api from here will not stop the Masternodes table from displaying data
        "getmasternodelist": {
          // enabled: Enable/disable the /ext/getmasternodelist api endpoint (true/false)
          //          If set to false, the /ext/getmasternodelist api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly) but the api will still be available internally to the explorer
          "enabled": true
        },
        // getmasternoderewards: a collection of settings that pertain to the /ext/getmasternoderewards api endpoint
        //                       Returns a list of masternode reward transactions for a specific address that arrived after a specific block height (only applicable to masternode coins)
        //                       NOTE: This api is not used internally and is therefore only publicly available
        "getmasternoderewards": {
          // enabled: Enable/disable the /ext/getmasternoderewards api endpoint (true/false)
          //          If set to false, the /ext/getmasternoderewards api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getmasternoderewardstotal: a collection of settings that pertain to the /ext/getmasternoderewardstotal api endpoint
        //                            Returns the total number of coins earned in masternode rewards for a specific address that arrived after a specific block height (only applicable to masternode coins)
        //                            NOTE: This api is not used internally and is therefore only publicly available
        "getmasternoderewardstotal": {
          // enabled: Enable/disable the /ext/getmasternoderewardstotal api endpoint (true/false)
          //          If set to false, the /ext/getmasternoderewardstotal api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        }
      }
    }
  },

  // claim_address_page: a collection of settings that pertain to the claim address page
  "claim_address_page": {
    // enabled: Enable/disable the ability for users to claim a wallet address (true/false)
    //          If set to false, the claim page will be completely inaccessible
    //          NOTE: Disabling this feature after addresses have already been claimed will effectively hide the claimed values and restore the original wallet addresses again
    "enabled": true,
    // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
    "show_panels": false,
    // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
    "show_nethash_chart": false,
    // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
    "show_difficulty_chart": false,
    // page_header: a collection of settings that pertain to the claim address page header
    "page_header": {
      // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
      "show_img": true,
      // show_title: Determine whether to show the page title as defined in "locale.claim_title" (true/false)
      "show_title": true,
      // show_description: Determine whether to show the page description as defined in "locale.claim_description" (true/false)
      "show_description": true
    },
    // show_header_menu: Show/hide the "Claim Address" header menu item (true/false)
    //                   If set to false, the claim address page can still be accessed via the claim link on each address page
    //                   NOTE: The "claim_address_page.enabled" setting must also be set to true or else the header item will automatically be hidden as well
    "show_header_menu": true,
    // enable_bad_word_filter: Enable/disable the "bad word" filter for claimed addresses, so that trying to claim an address with a bad word like "ash0le" will fail
    //                         This feature uses the default blacklist from the "bad-words" plugin from here: https://www.npmjs.com/package/bad-words
    "enable_bad_word_filter": true
  },

  // sync: a collection of settings that pertain to the data synchronization process
  "sync": {
    // block_parallel_tasks: Use multiple threads to do blockchain syncing which greatly improves the initial sync speed, but there is a drawback.
    //                       If you sync using more than 1 parallel task, then historical balance data for wallet addresses can possibly be saved out-of-order and there is currently no workaround for this.
    //                       Therefore, it is recommended to keep this setting to 1 parallel task for now until a proper solution can be procured for the historical balance issue.
    "block_parallel_tasks": 1,
    // update_timeout: The amount of time to wait (in milliseconds) before moving to the next block or transaction during blockchain sync or reindex (/path/to/node scripts/sync.js update or /path/to/node scripts/sync.js reindex)
    "update_timeout": 10,
    // check_timeout: The amount of time to wait (in milliseconds) before moving to the next block or transaction during a check sync (/path/to/node scripts/sync.js check)
    "check_timeout": 250,
    // save_stats_after_sync_blocks: During index syncronization, stats are saved after processing this many blocks to save time by not having to save after each block
    "save_stats_after_sync_blocks": 100,
    // show_sync_msg_when_syncing_more_than_blocks: Show the sync msg at the top of all pages during index syncronization if there are more than this many blocks to process
    "show_sync_msg_when_syncing_more_than_blocks": 1000,
    // supply: Determine how to calculate current coin supply
    //         NOTE: The supply is always retrieved right before doing a normal index sync, reindex or check
    //         Valid options:
    //         COINBASE : retrieve the total coins sent from the coinbase (Often used for PoW coins)
    //         GETINFO : retrieved from getinfo rpc cmd (Often used for PoS coins)
    //         GETBLOCKCHAININFO : retrieved from getblockchaininfo rpc cmd
    //         HEAVY: retrieved from getsupply rpc cmd (The "blockchain_specific.heavycoin.enabled" setting must be set to true and the "blockchain_specific.heavycoin.api_cmds.getsupply" setting must be set up correctly for this option to work properly)
    //         BALANCES : get the supply by running a query on the addresses collection and summing up all positive balances (potentially a long running query for blockchains with tons of addresses)
    //         TXOUTSET : retrieved from gettxoutsetinfo rpc cmd
    "supply": "GETINFO"
  },

  // labels: a collection of settings that pertain to the list of customized wallet address labels
  //         Adding entries to this section will display a custom label beside each affected wallet address when displayed in the explorer
  //         NOTE: You can add as many address labels as desired
  "labels": {
    // A collection of settings that pertain to the EJ6yc47cAZMGWHFccc9gfGbDLYuyNhP6wL wallet address
    // NOTE: Change this value to the wallet address that you would like to set a custom label on
    "EJ6yc47cAZMGWHFccc9gfGbDLYuyNhP6wL": {
      // enabled: Enable/disable this particular wallet address label (true/false)
      //          If set to false, the label will be completely hidden
      "enabled": false,
      // label: The text to display in the custom label
      "label": "Development Budget",
      // type: The bootstrap CSS class suffix for the label. This will change the background color of the label.
      //       Valid options: primary, secondary, success, danger, warning, info, light, dark
      //       NOTE: Leave the value blank ( "" ) to use default colors
      "type": "success",
      // url: The url the label should navigate to when clicked. Ex: http://example.com
      //      NOTE: Leave the value blank ( "" ) to prevent hyperlinking the label
      "url": ""
    },
    // A collection of settings that pertain to the EXorBurnAddressXXXXXXXXXXXXXW7cDZQ wallet address
    // NOTE: Change this value to the wallet address that you would like to set a custom label on
    "EXorBurnAddressXXXXXXXXXXXXXW7cDZQ": {
      // enabled: Enable/disable this particular wallet address label (true/false)
      //          If set to false, the label will be completely hidden
      "enabled": false,
      // label: The text to display in the custom label
      "label": "Burn Address",
      // type: The bootstrap CSS class suffix for the label. This will change the background color of the label.
      //       Valid options: primary, secondary, success, danger, warning, info, light, dark
      //       NOTE: Leave the value blank ( "" ) to use default colors
      "type": "danger",
      // url: The url the label should navigate to when clicked. Ex: http://example.com
      //      NOTE: Leave the value blank ( "" ) to prevent hyperlinking the label
      "url": ""
    }
  },

  //api_cmds: A collection of settings that pertain to the list of customizable rpc api commands
  //          Not all blockchains utilize the same rpc cmds for accessing the internal daemon api. Use these settings to set alternate names for similar api cmds.
  //          Leaving a cmd value blank ( "" ) will completely disable use of that cmd.
  //          NOTICE: Some apis such as getblockhash for example, are integral to the functionality of the explorer and will result in a fairly unusable experience if disabled.
  "api_cmds": {
    // use_rpc: Determine whether to call rpc api cmds directly using the faster rpc method or using the older method via internal http api (true/false)
    //          NOTE: This should always be set to true unless there is a specific need to test or log certain apis
    "use_rpc": true,
    // getnetworkhashps: Returns the estimated network hashes per second. This should be a positive whole number
    "getnetworkhashps": "getnetworkhashps",
    // getmininginfo: Returns a json object containing mining-related information
    "getmininginfo": "getmininginfo",
    // getdifficulty: Returns the proof-of-work difficulty as a multiple of the minimum difficulty. This should be a positive whole or decimal number
    "getdifficulty": "getdifficulty",
    // getconnectioncount: Returns the number of connections to other nodes. This should be a positive whole number
    "getconnectioncount": "getconnectioncount",
    // getblockcount: Returns the number of blocks in the longest blockchain. This should be a positive whole number
    "getblockcount": "getblockcount",
    // getblockhash: Returns hash of block in best-block-chain at height provided. This should be a string value
    "getblockhash": "getblockhash",
    // getblock: Returns an object with information about a particular block
    "getblock": "getblock",
    // getrawtransaction: Returns raw transaction data. Can return a hex-encoded string that is serialized or an object with txid information depending on the decrypt value (0 = false or 1 = true)
    "getrawtransaction": "getrawtransaction",
    // getinfo: Returns an object containing various state info
    "getinfo": "getinfo",
    // getblockchaininfo: Returns an object containing various state info regarding blockchain processing
    "getblockchaininfo": "getblockchaininfo",
    // getpeerinfo: Returns data about each connected network node as a json array of objects
    "getpeerinfo": "getpeerinfo",
    // gettxoutsetinfo: Returns an object with statistics about the unspent transaction output set
    "gettxoutsetinfo": "gettxoutsetinfo",
    // getvotelist: Returns an object with details regarding the current vote list
    "getvotelist": "masternodelist votes",
    // getmasternodecount: Returns a json object containing the total number of masternodes on the network
    "getmasternodecount": "getmasternodecount",
    // getmasternodelist: Returns a json array containing status information for all masternodes on the network
    "getmasternodelist": "listmasternodes",
    // verifymessage: Verify a signed message. Must accept the following arguments:
    //                address: The wallet address to use for the signature
    //                signature: The signature provided by the signer in base 64 encoding
    //                message: The message that was signed
    "verifymessage": "verifymessage"
  },

  // blockchain_specific: A collection of settings that pertain to non-standard blockchain features that can extend the functionality of the default explorer
  "blockchain_specific": {
    // bitcoin: A collection of settings that pertain to Bitcoin-specific scripts (P2PK support)
    "bitcoin": {
      // enabled: Enable/disable the use of bitcoin scripts in the explorer (true/false)
      //          If set to false, all P2PK transactions will be saved without addresses as they require special encoding to reveal the more familiar P2PKH address
      //          NOTE: Enabling this feature will require a full reindex of the blockchain data to fix any P2PK transactions that were previously not displaying addresses
      "enabled": false,
      //api_cmds: A collection of settings that pertain to the list of customizable bitcoin rpc api commands
      //          Not all blockchains utilize the same rpc cmds for accessing the internal daemon api. Use these settings to set alternate names for similar api cmds.
      //          Leaving a cmd value blank ( "" ) will completely disable use of that cmd.
      "api_cmds": {
        // getdescriptorinfo: Accepts a descriptor as input and returns an object with more detailed information, including its computed checksum
        "getdescriptorinfo": "getdescriptorinfo",
        // deriveaddresses: Accepts an output descriptor as input and returns an array containing one or more P2PKH addresses
        "deriveaddresses": "deriveaddresses"
      }
    },
    // heavycoin: A collection of settings that pertain to the democratic voting and reward capabilities of the heavycoin blockchain
    "heavycoin": {
      // enabled: Enable/disable the use of heavycoin features in the explorer (true/false)
      //          If set to false, all heavycoin features will be completely inaccessible
      //          If set to true, an additional heavycoin sync will be performed immidiately before any index sync or reindex
      "enabled": false,
      // reward_page: a collection of settings that pertain to the reward page
      "reward_page": {
        // enabled: Enable/disable the reward page (true/false)
        //          If set to false, the reward page will be completely inaccessible
        "enabled": true,
        // show_panels: Determine whether to show the panels configured in the shared_pages.page_header section across the top of this page (true/false)
        "show_panels": false,
        // show_nethash_chart: Determine whether to show the network hashrate chart configured in the shared_pages.network_charts.nethash_chart section across the top of this page (true/false)
        "show_nethash_chart": false,
        // show_difficulty_chart: Determine whether to show the network difficulty chart configured in the shared_pages.network_charts.difficulty_chart section across the top of this page (true/false)
        "show_difficulty_chart": false,
        // page_header: a collection of settings that pertain to the reward page header
        "page_header": {
          // show_img: Determine whether to show the page title image defined in the "shared_pages.page_header.page_title_image" setting (true/false)
          "show_img": true,
          // show_title: Determine whether to show the page title as defined in "locale.reward_title" (true/false)
          "show_title": true,
          // show_last_updated: Determine whether to show a label below the page title with the last updated date (true/false)
          "show_last_updated": true,
          // show_description: Determine whether to show the page description as defined in "locale.reward_description" (true/false)
          "show_description": true
        }
      },
      //api_cmds: A collection of settings that pertain to the list of customizable heavycoin rpc api commands
      //          Not all blockchains utilize the same rpc cmds for accessing the internal daemon api. Use these settings to set alternate names for similar api cmds.
      //          Leaving a cmd value blank ( "" ) will completely disable use of that cmd.
      "api_cmds": {
        // getmaxmoney: Returns the number of coins that will be produced in total. This should be a positive whole or decimal number
        "getmaxmoney": "getmaxmoney",
        // getmaxvote: Returns the maximum allowed vote for the current phase of voting. This should be a positive whole number
        "getmaxvote": "getmaxvote",
        // getvote: Returns the current block reward vote setting. This should be a positive whole number
        "getvote": "getvote",
        // getphase: Returns the current voting phase name. This should be a string value
        "getphase": "getphase",
        // getreward: Returns the current block reward. This should be a positive whole or decimal number
        "getreward": "getreward",
        // getsupply: Returns the current money supply. This should be a positive whole or decimal number
        "getsupply": "getsupply",
        // getnextrewardestimate: Returns an estimate for the next block reward based on the current state of decentralized voting. This should be a positive whole or decimal number
        "getnextrewardestimate": "getnextrewardestimate",
        // getnextrewardwhenstr: Returns a string describing how long until the votes are tallied and the next block reward is computed
        "getnextrewardwhenstr": "getnextrewardwhenstr"
      },
      // public_apis: a collection of settings that pertain to the heavycoin public api command system
      //              NOTE: If the "api_page.enabled" setting is set to false, these apis will be completely disabled and will return a "This method is disabled" msg if the api endpoint is called.
      //                    Disabling any of these apis will remove the api definition from the api page and will return a "This method is disabled" msg if the api endpoint is called.
      "public_apis": {
        // getmaxmoney: a collection of settings that pertain to the /api/getmaxmoney api endpoint
        //              Returns the number of coins that will be produced in total
        //              NOTE: This api is not used internally and is therefore only publicly available
        "getmaxmoney": {
          // enabled: Enable/disable the /api/getmaxmoney api endpoint (true/false)
          //          If set to false, the /api/getmaxmoney api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getmaxvote: a collection of settings that pertain to the /api/getmaxvote api endpoint
        //             Returns the maximum allowed vote for the current phase of voting
        //             NOTE: This api is not used internally and is therefore only publicly available
        "getmaxvote": {
          // enabled: Enable/disable the /api/getmaxvote api endpoint (true/false)
          //          If set to false, the /api/getmaxvote api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getvote: a collection of settings that pertain to the /api/getvote api endpoint
        //          Returns the current block reward vote setting
        //          NOTE: This api is not used internally and is therefore only publicly available
        "getvote": {
          // enabled: Enable/disable the /api/getvote api endpoint (true/false)
          //          If set to false, the /api/getvote api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getphase: a collection of settings that pertain to the /api/getphase api endpoint
        //           Returns the current voting phase name
        //           NOTE: This api is not used internally and is therefore only publicly available
        "getphase": {
          // enabled: Enable/disable the /api/getphase api endpoint (true/false)
          //          If set to false, the /api/getphase api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getreward: a collection of settings that pertain to the /api/getreward api endpoint
        //            Returns the current block reward
        //            NOTE: This api is not used internally and is therefore only publicly available
        "getreward": {
          // enabled: Enable/disable the /api/getreward api endpoint (true/false)
          //          If set to false, the /api/getreward api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getsupply: a collection of settings that pertain to the /api/getsupply api endpoint
        //            Returns the current money supply
        //            NOTE: This api is not used internally and is therefore only publicly available
        "getsupply": {
          // enabled: Enable/disable the /api/getsupply api endpoint (true/false)
          //          If set to false, the /api/getsupply api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getnextrewardestimate: a collection of settings that pertain to the /api/getnextrewardestimate api endpoint
        //                        Returns an estimate for the next block reward based on the current state of decentralized voting
        //                        NOTE: This api is not used internally and is therefore only publicly available
        "getnextrewardestimate": {
          // enabled: Enable/disable the /api/getnextrewardestimate api endpoint (true/false)
          //          If set to false, the /api/getnextrewardestimate api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        },
        // getnextrewardwhenstr: a collection of settings that pertain to the /api/getnextrewardwhenstr api endpoint
        //                       Returns a string describing how long until the votes are tallied and the next block reward is computed
        //                       NOTE: This api is not used internally and is therefore only publicly available
        "getnextrewardwhenstr": {
          // enabled: Enable/disable the /api/getnextrewardwhenstr api endpoint (true/false)
          //          If set to false, the /api/getnextrewardwhenstr api will be completely disabled for public use (no definition on the api page and a disabled error msg if you try to call the endpoint directly)
          "enabled": true
        }
      }
    },
    // zksnarks: A collection of settings that pertain to Zcash zk-SNARKs private transactions
    "zksnarks": {
      // enabled: Enable/disable Zcash zk-SNARKs private transaction support (true/false)
      //          If set to false, zk-SNARKs private txs will not be properly read or saved by the explorer
      //          NOTE: Enabling this feature will require a full reindex of the blockchain data
      "enabled": false
    }
  }
}
