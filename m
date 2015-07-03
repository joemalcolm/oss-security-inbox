X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["918" "Friday" "3" "July" "2015" "11:15:24" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150703111524.762f89eb@redhat.com>" "29" "Re: [oss-security] CVE-2015-3258 CVE-2015-3279 cups-filters" nil nil nil "7" "2015070309:15:24" "[oss-security] CVE-2015-3258 CVE-2015-3279 cups-filters" (number mark "        scorneli@red Jul  3   29/918   " thread-indent "\"Re: [oss-security] CVE-2015-3258 CVE-2015-3279 cups-filters\"\n") "<20150626195914.6809395a@redhat.com>" ("<20150626184326.6b7309a8@redhat.com>" "<20150626195914.6809395a@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19748 invoked by uid 550); 3 Jul 2015 09:15:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19730 invoked from network); 3 Jul 2015 09:15:42 -0000
Message-ID: <20150703111524.762f89eb@redhat.com>
In-Reply-To: <20150626195914.6809395a@redhat.com>
References: <20150626184326.6b7309a8@redhat.com>
	<20150626195914.6809395a@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Fri, 3 Jul 2015 11:15:24 +0200
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-3258 CVE-2015-3279 cups-filters
To: oss-security@lists.openwall.com

On Fri, 26 Jun 2015 19:59:14 +0200
Stefan Cornelius <scorneli@redhat.com> wrote:
> Hi again,
> 
> I think there's a possible problem with the patch that I failed to
> catch earlier in the process, so you may want to hold packaging for a
> bit until this is fully investigated.
> 
> Sorry for the inconvenience.

Hi,

Even with the patch for CVE-2015-3258 in version 1.0.70 it was possible
to trigger an integer overflow leading to a heap-based buffer overflow
using the same vector (specially crafted line sizes).

The integer overflow has been assigned CVE-2015-3279 and is fixed in
version 1.0.71. Apart from that, the patch also hardens against
possible crashes due to missing calloc() success checks.

Patch:
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/revision/7365

Red Hat bug:
https://bugzilla.redhat.com/show_bug.cgi?id=1238990

Thanks,
-- 
Stefan Cornelius / Red Hat Product Security
