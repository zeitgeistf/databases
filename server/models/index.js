var db = require('../db');

module.exports = {
  messages: {
    get: function (res) {
      db.query('SELECT * FROM messages', function(err, rows) {
         if (err) res.send(err);
          console.log(rows);
          res.send(rows);
      })
    }, // a function which produces all the messages
    post: function (req, res) {
      db.query('INSERT INTO messages (message, roomname) VALUES (?, ?)',req.body, function(err, result) {
        if (err) res.send(err);
        res.send();
      })
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

