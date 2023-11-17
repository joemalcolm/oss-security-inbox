Received: (qmail 26180 invoked by uid 550); 17 Nov 2023 09:37:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26147 invoked from network); 17 Nov 2023 09:37:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1700213825; h=from:from:sender:sender:reply-to:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:list-id;
	bh=rocrvKZFmccA4DC0A67fsGVhDAuqLIPA8ToAJwHoNUw=;
	b=jumq77wxq4xqJbld9BcDNepKyuLITJYHAr+JQm/DaVL9h0IVqimCC6hVr7QEyNfyWfQ4VE
	5vn2txi8lJOAGD2dVLV/vmW67HU2gQ8VOfpXBW0p6OS+PaW9Gnpxe0b0CMocSM7Oe7GwJz
	9+HCAQMr5lkKD67fs5rXXHf+iTObDD4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1700213825;
	h=from:from:sender:sender:reply-to:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:list-id;
	bh=rocrvKZFmccA4DC0A67fsGVhDAuqLIPA8ToAJwHoNUw=;
	b=EyjVByulQKYqVP/2er/WR9TGghJUvqtEEnbskj1pn/mg28nzOiKEFVDOibZ+I1SrTYEHkf
	lObEL9AitlRt6YDQ==
Date: Fri, 17 Nov 2023 10:37:04 +0100
From: Matthias Gerstner <mgerstner@suse.de>
Sender: security-team <security-team-bounces+mgerstner=suse.de@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZVc0QDRY04pR81cs@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="V1iZDCyLZxPEeOgc"
Content-Disposition: inline
Authentication-Results: smtp-out1.suse.de;
	none
Subject: [oss-security] hplip: security issues in `hpps` program due to fixed /tmp path
 usage in prnt/hpps/hppsfilter.c

--V1iZDCyLZxPEeOgc
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="HVnuWQJYgEri8zeM"
Content-Disposition: inline
Date: Fri, 17 Nov 2023 10:37:04 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: hplip: security issues in `hpps` program due to fixed /tmp path
 usage in prnt/hpps/hppsfilter.c


--HVnuWQJYgEri8zeM
Content-Type: text/plain; charset=iso-8859-1; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this report is about the problematic use of fixed temporary paths in the
`hpps` program from the hplip [1] project. Hplip is a collection of
utilities for HP printer and scanner devices.

There is currently no upstream fix available for this issue and this
publication happens after 90 days of attempted coordinated disclosure,
but upstream did not react to my report.

This report is based on the latest upstream release 3.23.8 [2] of hplip.

The Issue
=3D=3D=3D=3D=3D=3D=3D=3D=3D

The program /usr/lib/cups/filter/hpps uses a number of insecure fixed
temporary files that can be found in prnt/hpps/hppsfilter.c:

    prnt/hpps/hppsfilter.c:1027:        sprintf(booklet_filename, "/tmp/%s.=
ps","booklet");
    prnt/hpps/hppsfilter.c:1028:        sprintf(temp_filename, "/tmp/%s.ps"=
,"temp");
    prnt/hpps/hppsfilter.c:1029:        sprintf(Nup_filename, "/tmp/%s.ps",=
"NUP");

These paths are only used if "booklet printing" is enabled. For testing, the
logic can be forced by invoking the program similar to this:

    $ export PPD=3D/usr/share/cups/model/manufacturer-PPDs/hplip-plugin/hp-=
laserjet_1020.ppd.gz
    $ /usr/lib/cups/filter/hpps some-job some-user some-title 10 HPBookletF=
ilter=3D10,fitplot,Duplex=3DDuplexTumble,number-up=3D1

The program will expect data to print on stdin this way. Just typing in
some random data and pressing Ctrl-d will make it continue. There is a
chance that it will crash, tough, since error returns from parsing
errors are largely not checked in this program.

The three paths are created and opened using `fopen()`, so no special
open flags are in effect that would prevent following symlinks, also the
`O_EXCL` flag is missing to prevent opening existing files. The
resulting system calls look like this (for creation / opening for
reading):

    openat(AT_FDCWD, "/tmp/temp.ps", O_WRONLY|O_CREAT|O_TRUNC, 0666) =3D 3
    openat(AT_FDCWD, "/tmp/temp.ps", O_RDONLY)

Furthermode there is a `chmod()` on the /tmp/temp.ps file:

    hppsfilter.c:110 chmod(temp_filename, S_IRUSR | S_IWUSR | S_IRGRP | S_I=
ROTH);

The data to print (from stdin) is written to this file, and the file is
also made world readable explicitly via this `chmod()`. The issues with
these paths are multifold:

- There is a local information leak, since the print job data will
  become visible to everybody in the system.
- There is violated data integrity, since other users can pre-create these
  files and manipulate e.g. the data to print.
- This may allow to create files in unexpected places, by placing symbolic
  links, if the Linux kernel's symlink protection is not active.
- Similarly it may allow to grant world read privileges to arbitrary
  files by following symlinks during the `chmod()`.
- It may allow further unspecified impact if crafted data is placed into
  /tmp/temp.ps which is processed by the complex `PS_Booklet()` function.

I did not research the impact of the issue further to see whether this
could lead to local code execution in the context of the user that is
invoking `hpps`.

Suggested Patch
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

To fix this issue all three fixed temporary paths need to be replaced by
unpredictably named temporary files that are safely created. Attached to
this email is a patch that I authored that accomplishes this. This patch
also drops the `chmod()`. The purpose of it is unclear, so it is
possible that this breaks something, if other processes with different
privileges need to access this file.

There is no patch or any other information available from upstream.

Affectedness
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Since, to my knowledge, there is no public version control system for
hplip, it is difficult to determine when this issue has been introduced.
By taking some samples from older SUSE distributions I found the issue
to be present at least since upstream release 3.19.12 from 2019-12-12.

CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Since HP is a CVE CNA, it is itself responsible for assigning a CVE.
Since there is no reaction from upstream I don't know if or when CVEs
will be available.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2023-08-21: I reported the finding privately to upstream via Launchpad [3],
            offering coordinated disclosure. No other means of contact are
            documented for hplip.
2023-09-05: Since I did not get any feedback yet I urged upstream via
            Launchpad to provide a response.
2023-10-04: I shared the suggested patch with upstream, still no response.
2023-11-17: The 90 days maximum embargo time we offer approached and we
            published the finding.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://sourceforge.net/projects/hplip
[2]: https://sourceforge.net/projects/hplip/files/hplip/3.23.8
[3]: https://bugs.launchpad.net/hplip/+bug/2032375

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--HVnuWQJYgEri8zeM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-hppsfilter-booklet-printing-change-insecure-fixed-tm.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 5875d32ce071e591461e404bdd8aae849ccdcab1 Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <matthias.gerstner@suse.de>
Date: Fri, 8 Sep 2023 10:17:04 +0200
Subject: [PATCH] hppsfilter: booklet printing: change insecure fixed /tmp f=
ile
 paths

Using the fixed /tmp file paths in booklet printing /tmp/booklet.ps,
/tmp/temp.ps and /tmp/NUP.ps is a local security issue and also prevents
potential parallel operation of hplip.

Use proper `mkstemp()` for these files. Functions like `PS_Booklet()`
and `cupsFileOpen()` don't use the open file descriptor but open the
path by name again. This is safe, since the files have already been
safely created and have safe modes. I wanted to avoid changing a whole
series of function signatures for this.

The purpose of the `chmod()` in `open_tempbookletfile()` is unclear, the
data should only be processed by our own process. Making the file world
readable is an information leak, though. Thus drop this line.
---
 prnt/hpps/hppsfilter.c | 124 ++++++++++++++++++++++++++++++++---------
 1 file changed, 98 insertions(+), 26 deletions(-)

diff --git a/prnt/hpps/hppsfilter.c b/prnt/hpps/hppsfilter.c
index d6721b1..711b8d8 100644
--- a/prnt/hpps/hppsfilter.c
+++ b/prnt/hpps/hppsfilter.c
@@ -43,7 +43,9 @@ static FILE *g_fp_outdbgps =3D NULL;
 static FILE *ptempbooklet_file =3D NULL;
 static char temp_filename[FILE_NAME_SIZE] =3D {0};
 static char booklet_filename[FILE_NAME_SIZE] =3D {0};
+static int booklet_fd =3D -1;
 static char Nup_filename[FILE_NAME_SIZE] =3D {0};
+static int Nup_fd =3D -1;
 extern void PS_Booklet(char *tempfile, char *bookletfile, char *nupfile,in=
t order, int nup, char* pagesize, int bookletMaker);
 static const char *GetOptionValue(const char *iOptionValue);
=20
@@ -99,16 +101,78 @@ static int hpwrite (void *pBuffer, size_t size)
     return ndata_written;
 }
=20
-static void open_tempbookletfile(char *mode)
+static int open_tempbookletfile(char *mode)
 {
-    ptempbooklet_file=3D fopen(temp_filename, mode);
+    snprintf(temp_filename, FILE_NAME_SIZE, "/tmp/hppsfilter-temp.XXXXXX");
+    int fd =3D mkstemp(temp_filename);
+    if (fd < 0) {
+        temp_filename[0] =3D '\0';
+        fprintf(stderr, "ERROR: Unable to open temp file %s\n", temp_filen=
ame);
+        return 1;
+    }
+
+    ptempbooklet_file =3D fdopen(fd, mode);
     if(ptempbooklet_file =3D=3D NULL)
     {
-            fprintf(stderr, "ERROR: Unable to open temp file %s\n", temp_f=
ilename);
-            return 1;
+        close(fd);
+        fprintf(stderr, "ERROR: Unable to open temp file %s\n", temp_filen=
ame);
+        return 1;
     }=20=20
-    chmod(temp_filename, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
+    return 0;
+}
+
+static void clean_tempfiles()
+{
+    if (booklet_fd !=3D -1)
+    {
+        close(booklet_fd);
+        booklet_fd =3D -1;
+    }
+
+    if (Nup_fd !=3D -1)
+    {
+        close(Nup_fd);
+        Nup_fd =3D -1;
+    }
+
+    if (ptempbooklet_file !=3D NULL)
+    {
+        fclose(ptempbooklet_file);
+        ptempbooklet_file =3D NULL;
+    }
+
+    if( booklet_filename[0] !=3D '\0' )
+    {
+        if ((unlink(booklet_filename)) =3D=3D -1)
+        {
+            fprintf(stderr, "ERROR: Unable to remove temporary files in /t=
mp dir \"%s\" ",booklet_filename);
+            return 1;
+        }
+
+        booklet_filename[0] =3D '\0';
+    }
+
+    if( temp_filename[0] !=3D '\0' )
+    {
+        if ((unlink(temp_filename)) =3D=3D -1)
+        {
+            fprintf(stderr, "ERROR: Unable to remove temporary files in /t=
mp dir \"%s\"  ",temp_filename);
+            return 1;
+        }
+
+        temp_filename[0] =3D '\0';
+    }
=20
+    if( Nup_filename[0] !=3D '\0' )
+    {
+        if ((unlink(Nup_filename)) =3D=3D -1)
+        {
+            fprintf(stderr, "ERROR: Unable to remove temporary files in /t=
mp dir \"%s\" ",Nup_filename);
+            return 1;
+        }
+
+        Nup_filename[0] =3D '\0';
+    }
 }
=20
 static int Dump_tempbookletfile (void *pBuffer, size_t size)
@@ -921,6 +985,8 @@ int main (int argc, char **argv)
    char buffer[MAX_BUFFER]     =3D {0};
    int LfpSecurePin =3D 0;
=20
+   atexit(clean_tempfiles);
+
     get_LogLevel();
     setbuf (stderr, NULL);
=20
@@ -1024,13 +1090,32 @@ int main (int argc, char **argv)
     if(booklet_enabled)
     {
         /* 1. dump  the contents of the input file into temp file */
-        sprintf(booklet_filename, "/tmp/%s.ps","booklet");
-        sprintf(temp_filename, "/tmp/%s.ps","temp");
-        sprintf(Nup_filename, "/tmp/%s.ps","NUP");
-        open_tempbookletfile("w");
-	while( (numBytes =3D cupsFileGetLine(fp_input, line, sizeof(line))) > 0)
+        snprintf(booklet_filename, FILE_NAME_SIZE, "/tmp/hppsfilter-bookle=
t.XXXXXX");
+        booklet_fd =3D mkstemp(booklet_filename);
+        if( booklet_fd < 0 )
+        {
+            booklet_filename[0] =3D '\0';
+            fprintf(stderr, "ERROR: Unable to create booklet temporary fil=
e \"%s\"", booklet_filename);
+            return 1;
+        }
+
+        snprintf(Nup_filename, FILE_NAME_SIZE, "/tmp/hppsfilter-nup.XXXXXX=
");
+        Nup_fd =3D mkstemp(Nup_filename);
+        if( Nup_fd < 0 )
+        {
+            Nup_filename[0] =3D '\0';
+            clean_tempfiles();
+            fprintf(stderr, "ERROR: Unable to create nup temporary file \"=
%s\"", Nup_filename);
+            return 1;
+        }
+
+        if( open_tempbookletfile("w") !=3D 0 )
+        {
+            clean_tempfiles();
+            return 1;
+        }
+        while( (numBytes =3D cupsFileGetLine(fp_input, line, sizeof(line))=
) > 0)
             Dump_tempbookletfile (line, numBytes);
-        fclose(ptempbooklet_file);
=20
         /* 2. Perform the booklet operation on the PS file */
         PS_Booklet(temp_filename,booklet_filename,Nup_filename,order,nup,s=
ubString,bookletMaker);
@@ -1040,6 +1125,7 @@ int main (int argc, char **argv)
         if ((fp_bookletinput =3D cupsFileOpen(Nup_filename, "r")) =3D=3D N=
ULL)
         {
             fprintf(stderr, "ERROR: Unable to open Nup_filename print file=
 \"%s\"", Nup_filename);
+            clean_tempfiles();
             return 1;
         }
         while ( (numBytes =3D cupsFileGetLine(fp_bookletinput, line, sizeo=
f(line))) > 0)
@@ -1047,21 +1133,7 @@ int main (int argc, char **argv)
         cupsFileClose (fp_bookletinput);
=20
         /* 4. Unlink function to remove the temp temporary files created */
-        if( (unlink(booklet_filename)) =3D=3D -1)
-        {
-            fprintf(stderr, "ERROR: Unable to remove temporary files in /t=
mp dir \"%s\" ",booklet_filename);
-            return 1;
-        }
-        if( (unlink(temp_filename)) =3D=3D -1)
-        {
-            fprintf(stderr, "ERROR: Unable to remove temporary files in /t=
mp dir \"%s\"  ",temp_filename);
-            return 1;
-        }
-        if( (unlink(Nup_filename)) =3D=3D -1)
-        {
-            fprintf(stderr, "ERROR: Unable to remove temporary files in /t=
mp dir \"%s\" ",Nup_filename);
-            return 1;
-        }
+        clean_tempfiles();
         booklet_enabled =3D 0;
         bookletMaker=3D0;
     }
--=20
2.41.0


--HVnuWQJYgEri8zeM--

--V1iZDCyLZxPEeOgc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmVXNEAACgkQFMQFyXGS
NVO3mxAAooVxOl/hjuKDWxigcy0zLfwb4Wxb09p38xuB6zHRONMI2a7s/J4zmEgy
4Nake1DTjcSUdqJx9DiDNfv50fKBpTOzAa49bxBuPizEBSvItH4pK07R0/mlmtmV
r7OIcQW9ZrH6ueS5E05wpsPmMDouqunD4dWeaMT6AOda9K+4AfTS2zAZR6581uSL
LvV3uPghrLpChCEjOoNEZtfEittnOv2ryQANzLjIUc/tGJ1P6A98zmjHLdqKFreh
dNJCaZVqvKI26pP3YUM1BawCb3lMGy23ZTivO5wqo440fHfyF3vsu+vqEIsH2GQS
GzdRC/ECVuf01IHq96F1mcf59t0NdBFJqSUUJQ5aLqBkrro7nqLW5lYommnduBNU
/PE3BsYsbpRt+awlJTF0BkopDS6uOaOw/R50IP0jXLNyHyjU4JeihypNpoAgghdQ
ArE8LdsDpJbafQM7ZTgXftEnOMlp/LHhb6NPH9qq3X4uVq9WsGbJ65vrvUj97a89
pH6WWgS70TjmFcmgSccBTI89b4YGqkTZDAC5yO6zNZWlSkxyojm5ho0bxAGxaOvU
GBCMKLF3b5r9qmEvQg8y1dQqvKYOzJN7js17lgD/4DLgr/C4KTK0bGcTigpJNf+/
Qo5oxTJ9mUiTdYMFT0GsSjC+gp16Cy1gsJAUKytuZYNS1jAld1U=
=sAXz
-----END PGP SIGNATURE-----

--V1iZDCyLZxPEeOgc--
