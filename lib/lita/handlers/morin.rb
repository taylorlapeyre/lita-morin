module Lita
  module Handlers
    class Morin < Handler
      TWATTERY = [
        'I regularly get asked the question: What do you think of <insert social app here>?',
        'This question is usually followed up by another question which goes something like: How would you design a great social app?',
        'Usually I answer this question by telling the story of “Super Normal,” one of my favorite Japanese design philosophies.',
        'When you set out to create a new product, you usually do not start by trying to think of something completely new.',
        'You think of a product or concept that is already “normal” to the world, and then try to make it better.',
        'You make it Super Normal.',
        'For example, imagine that you are an innovator in the world of simple tools for around the home.',
        'Today you are interested in creating a new and innovative version of the everyday metal bucket.',
        'At the outset, you would not start your design by thinking of anything other than a bucket.',
        'Imagine a basic metal bucket in your mind.',
        'The design we know today has evolved over the years to include a few simple features.',
        'The bucket is made of durable metal for longevity.',
        'It has ripples on the sides to make it easy to grasp with the hands.',
        'It has a curved metal handle making it possible to carry with one hand.',
        'The bucket design of today serves its function well.',
        'To apply Super Normal thinking we start by looking at what is normal and then ask the question: What are the key problems?',
        'In the case of our basic metal bucket we can find a few.',
        'First, the metal handle cuts into your hand when carrying a bucket full of cold water.',
        'Second, when picking up a bucket of cold water the metal is freezing to the touch.',
        'Third, when pouring the water out, it’s hard to control the stream of water, causing you to lose water.',
        'In thinking through these problems we can come up with some simple innovations that would make the bucket better.',
        'First, we can add a wood or plastic wrap to the metal handle, creating more surface area and thus a more comfortable carry.',
        'Second, we can wrap the entire bucket in a thin layer of plastic creating insulation when carrying hot or cold water.',
        'Third, we can add a spout to the side, making it easy to control the pour, causing you to lose less water.',
        'When we finish our design, and put it in front of our customer, the bucket looks like a bucket.',
        'It is comfortably familiar and ordinary at a glance.',
        'But as the customer interacts with the bucket, what is familiar fades away, and what is left is something new.',
        'The customer is delighted because we have changed their perspective of what a bucket can be.',
        'The same rules apply to design and innovation in social software.',
        'Often times I find that we start in the wrong place.',
        'To increase your chance of success, start with concepts that are normal to users.',
        'A simple list of these concepts might be: friending, following, tagging, posting, sending, sharing, liking, commenting, chatting, listening, watching, writing, uploading, downloading.',
        'Each of these concepts has been put to work billions and billions of times by social software systems time and time again over the last couple of decades.',
        'A good place to start when creating a new social app for the first time is to build upon these normal concepts, and then add your own twist.',
        'Much success has been seen on the Internet by doing this.',
        'In each of these cases, the innovator did not invent the category.',
        'They simply took what was “normal”, and added a twist.',
        'They added an innovation.',
        'The innovation solved a key problem of the “normal” use case that we all already understood.',
        'Sometimes these problems were in how the human interfaced with the technology.',
        'Sometimes utility or creativity could be enhanced by adding a constraint.',
        'Sometimes, a previous constraint was no longer necessary.',
        'And, sometimes the technology enabled interaction in a whole new context.',
        'In each case, the innovator built on top of concepts which had already been iterated upon billions and billions of times in social systems.',
        'Too often we make the mistake of trying to use concepts in our products, and thus words in our interfaces, which have no current meaning to users.',
        'As an innovator with limited resources, building a new concept is not something you can usually afford to do.',
        'By removing friction for the user to interact in a new way, each of these products unlocked massive value.',
        'As creators, we feel constant demand for innovation from the world.',
        'This puts immense pressure on the creative process and often times can have a dampening effect.',
        'I find it useful to keep in mind this simple philosophy when starting each new creative project and always remember to ask the questions: What is normal? How can we make it Super Normal?'
      ]

      route(/[Mm]orin/, :show_quote, command: false, help: {
        "morin" => "Show some twattery"
      })

      def show_quote(response)
        response.reply TWATTERY.sample
      end
    end

    Lita.register_handler(Morin)
  end
end
