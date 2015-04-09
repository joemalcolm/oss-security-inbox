X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["596" "Thursday" "9" "April" "2015" "16:30:44" "+0200" "Petr Matousek" "pmatouse@redhat.com" "<20150409143044.GL2996@dhcp-25-225.brq.redhat.com>" "17" "Re: [oss-security] CVE-2015-1779 qemu: vnc: insufficient resource limiting in VNC websockets decoder" nil nil nil "4" "2015040914:30:44" "[oss-security] CVE-2015-1779 qemu: vnc: insufficient resource limiting in VNC websockets decoder" (number mark "        pmatouse@red Apr  9   17/596   " thread-indent "\"Re: [oss-security] CVE-2015-1779 qemu: vnc: insufficient resource limiting in VNC websockets decoder\"\n") "<20150324072054.GN15316@dhcp-25-225.brq.redhat.com>" ("<20150324072054.GN15316@dhcp-25-225.brq.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3892 invoked by uid 550); 9 Apr 2015 14:31:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3859 invoked from network); 9 Apr 2015 14:31:01 -0000
Message-ID: <20150409143044.GL2996@dhcp-25-225.brq.redhat.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20150324072054.GN15316@dhcp-25-225.brq.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150324072054.GN15316@dhcp-25-225.brq.redhat.com>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Thu, 9 Apr 2015 16:30:44 +0200
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1779 qemu: vnc: insufficient resource
 limiting in VNC websockets decoder
To: oss-security@lists.openwall.com

On Tue, Mar 24, 2015 at 08:20:55AM +0100, Petr Matousek wrote:
> Upstream patch submission:
> https://lists.gnu.org/archive/html/qemu-devel/2015-03/msg04894.html

Upstream patches:

http://git.qemu.org/?p=qemu.git;a=commit;h=a2bebfd6e09d
http://git.qemu.org/?p=qemu.git;a=commit;h=2cdb5e142fb93

Please note that the first patch committed to QEMU project git is
slightly different than the initial submission as it includes fix
for a regression caused by the original patch.

Thanks,
-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
