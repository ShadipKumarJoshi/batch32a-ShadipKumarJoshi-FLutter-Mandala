# final_assignment

The name of this mobile application is "MANDALA T-On-Line Prints" build using Flutter

Mandala T-On-Line Prints
Introduction
 "Mandala T-On-Line Prints" is an innovative online platform based in Nepal that specializes in customizing prints on garments, particularly t-shirts, sweatshirts, and hoodies. The platform also serves as a marketplace for artists to exhibit and sell their artwork on wearable items, catering to a wide range of art enthusiasts. The brand draws inspiration from the intricate beauty of mandala art, aiming to provide a space for artists to showcase their creativity and offer customers personalized clothing options that reflect their personality, ideas, and interests. Ultimately, "Mandala T-On-Line Prints" aims to nurture creativity and celebrate individual expression.

Justification
Background
	In the modern era, there is a growing desire for individuals to express themselves and have their voices heard, particularly among the younger generation. Social media platforms such as Facebook, Instagram, and Twitter (now known as X) are inundated with a plethora of ideas, photos, and content shared by users for various purposes such as marketing, raising awareness, or simply showcasing their personalities and lifestyles. The emergence of "social influencers" highlights the active participation of individuals in this digital landscape.
Moreover, there is a noticeable shift towards online shopping, with platforms like Daraz and Facebook's marketplace gaining popularity for purchasing clothing items. The global custom t-shirt printing market is projected to witness significant growth, with an estimated value of USD 4.07 billion in 2023, USD 4.49 billion in 2024, and a forecasted value of USD 8.32 billion by 2030, indicating a compound annual growth rate of 10.74% .

 
Problem Statement
In Nepal, personalized garment printing is predominantly reserved for special events, as the majority of consumers prefer the convenience of print-on-demand products due to their minimal environmental impact. Likewise, print-on-demand garment is only possible by visitation at the printing factory as there is no online platform for this. Many artists are also unable to make a name and use their designs to sell as a garment design material, thereby being unemployed or missing this opportunity to make money through their designs. Normal people are also unaware of such printing factories and tend to buy readily available market garments.
Considering the aforementioned problems in Nepal, Mandala T-On-Line Prints is created to cater to the increasing need for personalized and distinctive products in the online shopping world. By connecting artists directly with consumers, this platform allows individuals to customize their own wearable items and showcase their unique style without the inconvenience of visiting multiple clothing stores. Moreover, Mandala T-On-Line Prints not only empowers independent artists by providing them with a platform to monetize their creations, but also enables customers to discover and own truly one-of-a-kind artwork.

 
Aim
Mandala T-On-Line Prints’ aims to inspire creativity, promote unique self-expression through t-shirt prints, and assist independent artists by offering customized clothing options.
Objectives
	The objectives of “Mandala T-On-Line Prints” are:
	Empower customers to personalize their clothing with a wide range of print choices.
	Streamline the process of customizing garments through a user-friendly online platform.
	Establish a marketplace where artists can exhibit and sell their one-of-a-kind artwork on clothing.
	Foster individual expression by offering personalized clothing designs.
	Guarantee customer satisfaction with high-quality prints and durable garments.
	Assist independent artists in monetizing and gaining recognition through a dedicated platform.
	Prioritize user trust by ensuring secure payment processing and data protection.
	Deliver responsive customer support to address inquiries and resolve issues promptly. 
Scope
Mandala T-On-Line Prints aims to provide a user-friendly interface that allows for easy customization, secure payment processing, and responsive customer support. It also serves as a marketplace for artists to showcase and sell their unique artwork on wearable garments, fostering a vibrant community of creativity and expression. 

 
Features
The features of this applications are:
	Registration and verification of users
	Display of artist profiles with portfolios
	Functionality for browsing and searching products
	Options for customizing products
	Process for adding items to cart and checking out
	Integration of secure payment methods
	Tracking and managing orders
	Inclusion of community features like user reviews and ratings.
MVVM Design Pattern
MVVM is to be used as architectural pattern in this mobile program development as it offers benefits such as clear separation of concerns between View, ViewModel, and Model, enhancing code maintainability, testability, and reusability. By decoupling the user interface from application logic, MVVM enables easier unit testing, flexible adaptation to changing requirements, and parallel development efforts. Data binding mechanisms streamline synchronization between components, reducing boilerplate code and improving code readability, making MVVM a preferred architectural choice for building this mobile application.

 
This architecture comprises three key components: Model, View, and ViewModel. The Model serves as a representation of the application's domain model, encompassing both data and business logic. It maintains communication with the ViewModel while remaining oblivious to the specifics of the View's implementation. On the other hand, the View embodies the user interface of the application. It holds minimal presentation logic, focusing solely on visual behavior. The View remains ignorant of the intricacies of the business logic, essentially functioning as a "dumb" entity that lacks direct data manipulation capabilities. Through data binding, the View communicates with the ViewModel, maintaining no direct awareness of the underlying Model. Serving as the intermediary, the ViewModel facilitates communication between the View and the Model. It exposes public properties and commands that the View utilizes via data binding. Any changes in state prompt the ViewModel to notify the View through notification events, ensuring synchronization between the user interface and the underlying business logic.

  
Conclusion
	Mandala T-On-Line Prints offers a digital platform that encourages creativity and uniqueness. Drawing inspiration from mandala art and catering to the desire for personalized items, it serves as a space for artists to display their creations and for customers to personalize their clothing. Through a user-friendly interface, safe transactions, and a dedication to promoting independent artists, Mandala T-On-Line Prints is transforming the world of customized apparel.
 

