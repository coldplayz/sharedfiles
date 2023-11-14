const express = require('express');
const cors = require('cors');
const morgan = require('morgan');

const app = express();

// setup CORS
// const origin = process.env.NODE_ENV === 'production' ? `${process.env.CLIENT_HOST}:${process.env.CLIENT_PORT}` : 'localhost:3000';
app.use(cors({
  origin: `http://localhost:5173`,
  credentials: true,
  exposedHeaders: ['Set-Cookie'],
}));

// register logger middleware
app.use(morgan());

// enable body-parsing middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

class UserData {
  constructor() {
    this.message = '';
    this.data = [];
  }
}

/*
const initialStories = [
  {
    title: 'React',
    url: 'https://reactjs.org/',
    author: 'Jordan Walke',
    num_comments: 3,
    points: 4,
    objectID: 0,
  },
  {
    title: 'Redux',
    url: 'https://redux.js.org/',
    author: 'Dan Abramov, Andrew Clark',
    num_comments: 2,
    points: 5,
    objectID: 1,
  },
  {
    title: 'Python',
    url: 'https://python.org/',
    author: 'Guido Van Rossum',
    num_comments: 12,
    points: 50,
    objectID: 2,
  },
];
*/

const now = Date.now();
const initialBooks = [
  {
    bookTitle: 'react-eco',
    bookURI: 'http://localhost:5173/home/books/react-eco',
    searchTags: "",
    lastEdited: now + 5,
    chapters: [
      {
        chapterTitle: 'react-router',
        chapterURI: 'http://localhost:5173/home/books/react-eco/chapters/react-router',
        searchTags: "",
        lastEdited: now,
        page: [
          {
            order: 1,
            tag: 'h1',
            content: 'react-router topmost heading',
          },
          {
            order: 2,
            tag: 'p',
            content: 'react-router paragragh',
          },
          {
            order: 3,
            tag: 'p',
            content: 'Content coming soon...',
          },
        ],
      },
      {
        chapterTitle: 'react',
        chapterURI: 'http://localhost:5173/home/books/react-eco/chapters/react',
        searchTags: "",
        lastEdited: now + 5,
        page: [
          {
            order: 1,
            tag: 'h1',
            content: 'react topmost heading',
          },
          {
            order: 2,
            tag: 'p',
            content: 'react paragragh',
          },
          {
            order: 3,
            tag: 'p',
            content: 'Content coming soon...',
          },
        ],
      },
    ]
  },
  {
    bookTitle: 'redux-eco',
    bookURI: 'http://localhost:5173/home/books/redux-eco',
    searchTags: "",
    lastEdited: now + 1,
    chapters: [
      {
        chapterTitle: 'redux-actions',
        chapterURI: 'http://localhost:5173/home/books/redux-eco/chapters/redux-actions',
        searchTags: "",
        lastEdited: now,
        page: [
          {
            order: 1,
            tag: 'h1',
            content: 'redux-actions topmost heading',
          },
          {
            order: 2,
            tag: 'p',
            content: 'redux-actions paragragh',
          },
          {
            order: 3,
            tag: 'p',
            content: 'Content coming soon...',
          },
        ],
      },
      {
        chapterTitle: 'redux',
        chapterURI: 'http://localhost:5173/home/books/redux-eco/chapters/redux',
        searchTags: "",
        lastEdited: now + 1,
        page: [
          {
            order: 1,
            tag: 'h1',
            content: 'redux topmost heading',
          },
          {
            order: 2,
            tag: 'p',
            content: 'redux paragragh',
          },
          {
            order: 3,
            tag: 'p',
            content: 'Content coming soon...',
          },
        ],
      }
    ],
  },
];

app.get('/login/fake', (req, res) => {
  const payload = new UserData();
  Object.seal(payload);

  // console.log(req.rawHeaders, req.url, req.method); // SCAFF
  res.status(401).json(payload);
});

app.get('/login/real', (req, res) => {
  const payload = new UserData();
  Object.seal(payload);

  // console.log(req.rawHeaders, req.url, req.method); // SCAFF
  res.json(payload);
});

app.get('/signup/fake', (req, res) => {
  const payload = new UserData();
  Object.seal(payload);

  // console.log(req.rawHeaders, req.url, req.method); // SCAFF
  res.status(400).json(payload);
});

app.get('/signup/real', (req, res) => {
  const payload = new UserData();
  Object.seal(payload);

  // console.log(req.rawHeaders, req.url, req.method); // SCAFF
  res.json(payload);
});

app.get('/data/fake', (req, res) => {
  const payload = new UserData();
  Object.seal(payload);

  // console.log(req.rawHeaders, req.url, req.method); // SCAFF
  res.status(401).json(payload);
});

app.get('/data/real-empty', (req, res) => {
  const payload = new UserData();
  Object.seal(payload);

  // console.log(req.rawHeaders, req.url, req.method); // SCAFF
  res.json(payload);
});

app.get('/data/real-full', (req, res) => {
  const payload = new UserData();
  Object.seal(payload);

  payload.data = initialBooks;

  // console.log(req.rawHeaders, req.url, req.method); // SCAFF
  res.json(payload);
});

// finally, at stack bottom, uncaught error handler
app.use(function (err, req, res, next) {
  const payload = new UserData();
  Object.seal(payload);

  console.log(err.stack);
  const message = `UNCAUGHT EXCEPTION: ${err.message}`;
  payload.message = message;
  res.status(err.status || 500).json(payload);
});

// establish connections
// const HOST = process.env.NODE_ENV === 'production' ? '::' : '0.0.0.0';
app.listen(5000, () => console.log(`Listening on port 5000`));
