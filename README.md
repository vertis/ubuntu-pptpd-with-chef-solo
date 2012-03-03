This repository should contain everything needed to get a pptpd server running on an ubuntu 10.04 (YMMV with other versions).

Pull requests welcome.

## Instructions

  * Create a blank ubuntu 10.04 server somewhere (linode?)
  * (Optional) change the .rvmrc to be correct
  * Add any users/passwords you would like to configs/default/node.json (see cookbooks/pptpd/attributes/default.rb for an example)
  * bundle install
  * Remove my ssh key from bootstrap/ubuntu-10.04-rvm.erb (sorry manual)
  * bin/deploy configure -u root -p yourpassword x.x.x.x


## License
Copyright (c) 2011 Luke Chadwick

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


