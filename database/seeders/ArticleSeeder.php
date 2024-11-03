<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Writer;
use App\Models\Article;
use Faker\Factory as Faker;

class ArticleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');
        $writers = Writer::all();

        $articles = [
            (object)[
            'category' => 'IM',
            'title' => 'Human and Computer Interaction',
            'content' => 'Human-Computer Interaction (HCI) focuses on the design and use of computer technology, particularly the interfaces between humans and computers. This field combines theories from computer science, psychology, and design to create effective user interfaces. Key principles include user-centered design, usability testing, and interaction design patterns. Modern HCI extends beyond traditional desktop interfaces to include mobile devices, virtual reality, and ambient computing. Researchers study how people interact with computers, developing models of user behavior, and creating guidelines for interface design. Important considerations include cognitive load, accessibility, error prevention, and user satisfaction. The field also addresses cultural and social aspects of technology use, ensuring interfaces are appropriate for diverse user groups. Recent developments incorporate artificial intelligence and machine learning to create more adaptive and personalized interfaces.',
            'image' => 'https://as1.ftcdn.net/v2/jpg/04/84/46/40/1000_F_484464043_DeVl9kWxKvPn4mRhjbGzzw3mTVCt9FNv.jpg',
            ],
            (object)[
            'category' => 'IM',
            'title' => 'User Experience',
            'content' => 'User Experience (UX) encompasses all aspects of end-user interaction with a company, its services, and products. It goes beyond mere usability to include emotional, behavioral, and contextual dimensions of product use. Effective UX design requires a deep understanding of user needs, limitations, and motivations. This involves extensive research, including user interviews, surveys, and behavioral analysis. The UX design process typically includes creating user personas, journey maps, and information architecture. Designers must consider various elements such as visual hierarchy, navigation patterns, and feedback mechanisms. The goal is to create products that are not only functional but also enjoyable and meaningful to use. Success metrics include user satisfaction, task completion rates, and emotional engagement. Modern UX design also considers accessibility, cross-platform consistency, and performance optimization.',
            'image' => 'https://as2.ftcdn.net/v2/jpg/02/50/09/13/1000_F_250091319_3kalhfjeAzM6qScxv8TFi5KudqT7q7Ok.jpg',
            ],
            (object)[
            'category' => 'IM',
            'title' => 'User Experience for Digital Immersive Technology',
            'content' => 'User Experience in Digital Immersive Technology focuses on creating engaging and natural interactions in virtual and augmented reality environments. This emerging field combines traditional UX principles with spatial design and human perception psychology. Key considerations include preventing motion sickness, maintaining user orientation, and creating intuitive gesture-based interactions. Designers must account for the unique challenges of 3D spaces, such as depth perception, field of view, and physical comfort during extended use. The immersive experience should balance realism with usability, ensuring users can navigate and interact effectively in virtual environments. This includes designing for different input methods, from hand controllers to eye tracking and voice commands. Special attention is paid to reducing cognitive load while maintaining presence and immersion. The field also addresses social aspects of virtual interactions, accessibility concerns, and the integration of haptic feedback.',
            'image' => 'https://as1.ftcdn.net/v2/jpg/04/19/15/12/1000_F_419151287_bjimS9uDLp3ANFjnTxaXDR6ZGSeXepZ5.jpg',
            ],
            (object)[
            'category' => 'SE',
            'title' => 'Pattern Software Design',
            'content' => 'Pattern Software Design, also known as design patterns, represents reusable solutions to common problems in software development. These patterns provide tested, proven development paradigms that help developers create more maintainable and scalable software. The most widely used patterns include Creational patterns like Singleton and Factory Method, Structural patterns such as Adapter and Composite, and Behavioral patterns like Observer and Strategy. Each pattern describes the problem it solves, when it should be used, and the consequences of its implementation. Design patterns promote code reusability, extensibility, and modularity while reducing the complexity of software systems. They also facilitate communication between developers by providing a common vocabulary for discussing software architecture. Understanding and properly implementing design patterns is crucial for creating robust, flexible, and maintainable software systems that can evolve with changing requirements.',
            'image' => 'https://as1.ftcdn.net/v2/jpg/03/18/81/58/1000_F_318815873_b0vP7x3B3I2KsMHHbJOftovC7rq7XJAy.jpg',
            ],
            (object)[
            'category' => 'SE',
            'title' => 'Agile Software Development',
            'content' => 'Agile Software Development is an iterative approach to project management and software development that emphasizes flexibility, customer collaboration, and rapid delivery of functional software. This methodology breaks projects into small, manageable chunks called sprints, typically lasting two to four weeks. Key principles include responding to change over following a plan, working software over comprehensive documentation, and individual interactions over processes and tools. Agile teams practice daily stand-ups, sprint planning, retrospectives, and continuous integration/deployment. The methodology promotes adaptive planning, evolutionary development, and continuous improvement. Teams work in cross-functional groups, encouraging collaboration and self-organization. Agile methodologies like Scrum and Kanban provide frameworks for implementing these principles effectively. This approach helps teams deliver value faster, adapt to changing requirements, and maintain high software quality through regular feedback and testing.',
            'image' => 'https://as1.ftcdn.net/v2/jpg/01/81/28/98/1000_F_181289867_9kjKVvlUShaMGcBZjLpfVQMaeDUSL6nK.jpg',
            ],
            (object)[
            'category' => 'SE',
            'title' => 'Code Re-engineering',
            'content' => 'Code Re-engineering involves the examination and alteration of existing software systems to reconstitute them in a new form. This process includes improving the systems functionality, performance, and maintainability while preserving its essential functions. The practice encompasses various activities such as reverse engineering, code restructuring, data restructuring, and forward engineering. Engineers analyze the current systems architecture, identify problematic areas, and implement modern design patterns and best practices. Key aspects include improving code readability, reducing technical debt, optimizing performance, and ensuring compatibility with modern technologies. The process often involves refactoring code, updating deprecated functions, and implementing automated testing. Successful re-engineering requires careful planning, thorough documentation, and strategic implementation to minimize risks while maximizing system improvements. This practice is essential for modernizing legacy systems and extending their operational lifespan.',
            'image' => 'https://as2.ftcdn.net/v2/jpg/00/68/02/31/1000_F_68023133_AP2eMraCtWu5HYJV8OG9FOL0BxbV6dh6.jpg',
            ],
        ];

        foreach ($articles as $article) {
            Article::create([
            'writer_id' => $writers->random()->id,
            'category' => $article->category,
            'title' => $article->title,
            'content' => $article->content,
            'image' => $article->image,
            ]);
        }
    }
}
