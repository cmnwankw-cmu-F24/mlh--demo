function isAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    return next();
  }
  return res.redirect('auth/login');
}

module.exports = {
  isAuthenticated,
};
