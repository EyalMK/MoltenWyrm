MoltenWyrm Server Core
===
### Custom server for World of Warcraft 4.3.4
----
*MoltenWyrm* is closed source project, built in [C++][7], it's fast, runs on multiple
platforms, can store game data in [MySQL][40] and [PostgreSQL][42]. It also has
optional support for SOAP, and aims to be 100% compatible with [World of Warcraft][2]
in its Cataclysm version supporting clients from the [patch 4.3.4][5] branch, 
specifically patch 4.3.4.

It's a fork of [NomadicWow], which is based on [MangosThree].

World of Warcraft, and all World of Warcraft or Warcraft art, images, and lore are
copyrighted by [Blizzard Entertainment, Inc.][1]

Requirements
------------
The *MoltenWyrm* server supports a wide range of operating systems, and various
compiler platforms. In order to do that, we use various free cross-platform
libraries and use [CMake][19] to provide a cross-platform build system which
adapts to your chosen operating system and compiler.

Operating systems
-----------------
Currently we support running *MoltenWyrm* on these operating systems:

* **Windows**, 32 bit and 64 bit. [Windows][20] Server 2008 (or newer) or Windows 7 (or newer) is recommended.
* **Linux**, 32 bit and 64 bit. [Debian 7][21] and [Ubuntu 12.04 LTS][22] are
  recommended. Other distributions with similar package versions will work, too.
* **BSD**, 32 bit and 64 bit. [FreeBSD][23], [NetBSD][24], [OpenBSD][25] and
  [DragonFly][26] are recommended.

Of course, newer versions should work, too. In the case of Windows, matching
server versions will work, too.

Compilers
---------
Building *Mangos* is currently possible with these compilers:

* **Microsoft Visual Studio (Express[^1])**, 32 bit and 64 bit. Both
  [Visual Studio][30] and the Express editions of [Visual Studio][31] are
  supported. Only Visual Studio 2012 and above are now officially supported.

* **Microsoft Windows SDK**, 32 bit and 64 bit. The [Windows 7 SDK][32] is
  recommended, as older versions lack compiler features required to build
  the server.
  
* **Clang**, 32 bit and 64 bit. The [Clang compiler][33] can be used on any
  supported operating system.[^2]

Dependencies
------------
The *MoltenWyrm* server stands on the shoulders of well-known Open Source
libraries, and a few awesome, but less known libraries to prevent us from
inventing the wheel again.

*Please note that Linux and Mac OS X users should install packages using
their systems package management instead of source packages.*

* **MySQL** / **PostgreSQL**: to store content, and user data, we rely on
  [MySQL][40]/[MariaDB][41] and [PostgreSQL][42] to handle data.
* **ACE**: the [ADAPTIVE Communication Environment][43] aka. *ACE* provides us
  with a solid cross-platform framework for abstracting operating system
  specific details.
* **Recast**: in order to create navigation data from the client's map files,
  we use [Recast][44] to do the dirty work. It provides functions for
  rendering, pathing, etc.
* **G3D**: the [G3D][45] engine provides the basic framework for handling 3D
  data, and is used to handle basic map data.
* **libmpq**: [libmpq][46] provides an abstraction layer for reading from the
  client's data files.
* **Zlib**: [Zlib][53] ([Zlib for Windows][51]) provides compression algorithms
  used in both MPQ archive handling and the client/server protocol.
* **Bzip2**: [Bzip2][54] ([Bzip2 for Windows][52]) provides compression
  algorithms used in MPQ archives.
* **OpenSSL**: [OpenSSL][48] ([OpenSSL for Windows][55]) provides encryption
  algorithms used when authenticating clients.
* **Lua**: [Lua 5.2][56] ([Lua 5.2 for Windows][57]) provides a convenient, fast
  scripting environment, which allows us to make live changes to scripted
  content.

*ACE*, *Recast*, *G3D* and *libmpq* are included in the *MoltenWyrm* distribution as
we rely on specific versions.

[NomadicWow]: https://github.com/jubel02/NomadicWow "NomadicWow Open Source Server Emulator [4.3.4]"
[MangosThree]: https://github.com/mangosthree/server "Mangos THREE is a server for World of Warcraft: Cataclysm"

[1]: http://blizzard.com/ "Blizzard Entertainment Inc. · we love you!"
[2]: http://battle.net/wow/ "World of Warcraft"
[5]: http://www.wowpedia.org/Patch_4.3.4 "WoW Cataclysm· Patch 4.3.4 release notes"
[7]: http://www.cppreference.com/ "C / C++ reference"

[19]: http://www.cmake.org/ "CMake · Cross Platform Make"
[20]: http://windows.microsoft.com/ "Microsoft Windows · that OS, yes."
[21]: http://www.debian.org/ "Debian · The Universal Operating System"
[22]: http://www.ubuntu.com/ "Ubuntu · The world's most popular free OS"
[23]: http://www.freebsd.org/ "FreeBSD · The Power To Serve"
[24]: http://www.netbsd.org/ "NetBSD · The NetBSD Project"
[25]: http://www.openbsd.org/ "OpenBSD · Free, functional and secure"
[26]: http://www.dragonflybsd.org/ "DragonFlyBSD"

[30]: http://www.microsoft.com/visualstudio/eng/ "Visual Studio 2012"
[31]: http://www.microsoft.com/visualstudio/eng/products/visual-studio-express-products "Visual Studio Express 2012 for Windows Desktop"
[32]: http://www.microsoft.com/en-us/download/details.aspx?id=8279 "Windows SDK for Windows 7 and .NET Framework 4"
[33]: http://clang.llvm.org/ "clang · a C language family frontend for LLVM"
[34]: http://git-scm.com/ "Git · Distributed version control system"
[35]: http://windows.github.com/ "github · windows client"
[36]: http://www.sourcetreeapp.com/ "SourceTree · Free Mercurial and Git Client for Windows/Mac"

[40]: http://www.mysql.com/ "MySQL · The world's most popular open source database"
[41]: http://www.mariadb.org/ "MariaDB · An enhanced, drop-in replacement for MySQL"
[42]: http://www.postgresql.org/ "PostgreSQL · The world's most advanced open source database"
[43]: http://www.cs.wustl.edu/~schmidt/ACE.html "ACE · The ADAPTIVE Communication Environment"
[44]: http://github.com/memononen/recastnavigation "Recast · Navigation-mesh Toolset for Games"
[45]: http://sourceforge.net/projects/g3d/ "G3D · G3D Innovation Engine"
[46]: http://github.com/ge0rg/libmpq "libmpq · A library for reading data from MPQ archives"
[48]: http://www.openssl.org/ "OpenSSL · The Open Source toolkit for SSL/TLS"
[49]: http://www.stack.nl/~dimitri/doxygen/ "Doxygen · API documentation generator"
[50]: http://www.lua.org/ "Lua · The Programming Language"
[51]: http://gnuwin32.sourceforge.net/packages/zlib.htm "Zlib for Windows"
[52]: http://gnuwin32.sourceforge.net/packages/bzip2.htm "Bzip2 for Windows"
[53]: http://www.zlib.net/ "Zlib"
[54]: http://www.bzip.org/ "Bzip2"
[55]: http://slproweb.com/products/Win32OpenSSL.html "OpenSSL for Windows"
[56]: http://www.lua.org/ "Lua"
[57]: https://code.google.com/p/luaforwindows/ "Lua for Windows"

