![IndiasArtisans](./web_flask/static/images/cover-pic.jpg)

## Introduction
"India's Artisans is a digital marketplace that acts as a gateway to traditional crafts, connecting skilled artisans with customers worldwide. The platform offers a space for artisans to showcase their unique handmade products while giving customers the opportunity to discover and purchase authentic artisanal goods tailored to their tastes. By digitizing the traditional artisanal market, India's Artisans empowers artisans to reach a broader audience and enables customers to easily find high-quality, handmade items.

India's Artisans includes a variety of features designed for both artisans and customers, such as:

- **Artisan Profiles:** Artisans can create personalized profiles or shops to showcase their work, upload product images, and provide detailed descriptions.
- **Product Listings:** Artisans can list their handmade items with pricing information for easy browsing.
- **Customer Orders:** Customers can explore the product offerings and place orders directly through the platform.
- **Search and Filter:** Users can search for products and artisans, filtering results by craft type, city, or country.
- **User Authentication:** A role-based authentication system ensures secure access to platform features for both artisans and customers.

India's Artisans aims to make traditional craftsmanship accessible to everyone while supporting artisans and promoting the cultural value of handmade goods."

## Technologies Used
**"India's Artisans is built on a robust set of technologies, chosen to create a seamless and efficient digital marketplace experience:**

- **Python:** The primary programming language used for backend development.
- **Flask:** A lightweight web framework for building web applications in Python, with the following extensions:
    - **Flask-WTF:** Simplifies form handling and validation.
    - **Flask-Bcrypt:** Provides bcrypt hashing utilities for secure password management.
    - **Flask-Login:** Manages user sessions, including login and logout functionality.
- **MySQL:** A relational database management system used for data storage.
- **SQLAlchemy:** A Python SQL toolkit and ORM (Object-Relational Mapping) library for interacting with MySQL databases.
- **HTML/CSS:** Used for frontend structure and styling.
- **Jinja:** A templating engine that generates dynamic HTML content.
- **JavaScript:** Adds interactivity to web pages.
- **jQuery:** A JavaScript library that simplifies client-side scripting.
- **Git:** A version control system for tracking and managing changes in the codebase.
- **Visual Studio Code:** The integrated development environment (IDE) used for coding.

Together, these technologies support a feature-rich and scalable platform, enabling artisans to showcase their work and customers to explore a wide variety of authentic handmade goods."

## Setup

To set up IndiasArtisans locally, follow these steps:

1. Clone the repository: `git clone https://github.com/sidmittal32/India-s-Artisans.git`
2. Navigate to the project directory: `cd India-s-Artisans`
3. Install dependencies: `pip install -r requirements.txt`
4. Set up MySQL database: `cat setup_mysql_dev.sql | mysql -hlocalhost -uroot -p`
5. Run the Flask application: `python -m web_flask.flask_app`
6. Run the API in a seperate terminal: `python -m api.v1.app`
6. Access the application in your web browser at `http://localhost:5000`
7. You can run the sql dump `mysql -u root -p` followed by `mysql> source path\to\dump.sql`

## Usage
**"Once India's Artisans is set up, follow these steps to start engaging with the platform:**

1. **Sign Up:** Create an account as either an artisan or a customer.
2. **For Artisans:** Set up your profile with personal information and list your handmade products, including detailed descriptions and pricing.
3. **For Customers:** Browse the product catalog, add items to your cart, place orders, and leave reviews on purchased products.

These steps allow artisans to showcase their craft and customers to discover and support authentic handmade goods." 

## Screenshots
![landing_page](web_flask\static\images\landing_page.png)
![sign_in](web_flask\static\images\sign_in.png)
![sign_up](web_flask\static\images\sign_up.png)
![artisans](web_flask\static\images\artisans.png)
![products](web_flask\static\images\products.png)
![product_page](web_flask\static\images\product_page.png)
![checkout](web_flask\static\images\checkout.png)
![previous_orders](web_flask\static\images\previous_orders.png)