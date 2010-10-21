require 'formula'

class Libpurple <Formula
  url 'http://downloads.sourceforge.net/project/pidgin/Pidgin/2.7.3/pidgin-2.7.3.tar.bz2'
  homepage 'http://pidgin.im/'
  md5 'e4bbadadae85e5e008690b52dd51f102'

  depends_on 'pkg-config' => :build
  depends_on 'gettext'
  depends_on 'glib'
  depends_on 'intltool'
  depends_on 'libidn'
  depends_on 'gnutls'
  depends_on 'gtkui'
  depends_on 'gstreamer'
  depends_on 'meanwhile'
  depends_on 'doxygen'
  depends_on 'perl'
#see http://pidgin.darwinports.com/dports/net/pidgin/Portfile
# http://github.com/mxcl/homebrew/blob/master/Library/Formula/nspr.rb
# http://gtkspell.sourceforge.net/
# http://www.freedesktop.org/wiki/Software/dbus
# http://www.freedesktop.org/wiki/Software/Avahi
# http://developer.pidgin.im/wiki/Using%20Finch
# http://developer.pidgin.im/wiki/Installing%20Pidgin#Compiling
# http://developer.pidgin.im/wiki/FAQssl
# http://pdb.finkproject.org/pdb/browse.php?summary=pidgin
# http://pdb.finkproject.org/pdb/package.php/pidgin?rel_id=10.6-i386-current-stable
# http://pdb.finkproject.org/pdb/package.php/pidgin-facebookchat




  def install
    # Just build the library, so disable all this UI stuff
    #brew link gettext
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--disable-consoleui",
                          "--disable-dbus",
                          "--disable-vv",
                          "--disable-avahi",
    system "make install"
  end
end
