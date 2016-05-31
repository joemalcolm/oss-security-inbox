X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["949" "Tuesday" "31" "May" "2016" "11:09:44" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20160531110944.58e24e2c@redhat.com>" "26" "Re: [oss-security] Security issues addressed in GraphicsMagick SVG reader" "^Cc:" nil nil "5" "2016053109:09:44" "[oss-security] Security issues addressed in GraphicsMagick SVG reader" (number mark "        scorneli@red May 31   26/949   " thread-indent "\"Re: [oss-security] Security issues addressed in GraphicsMagick SVG reader\"\n") "<alpine.GSO.2.20.1605270933490.4552@freddy.simplesystems.org>" ("<alpine.GSO.2.20.1605270933490.4552@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28216 invoked by uid 550); 31 May 2016 09:10:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28191 invoked from network); 31 May 2016 09:10:05 -0000
Message-ID: <20160531110944.58e24e2c@redhat.com>
In-Reply-To: <alpine.GSO.2.20.1605270933490.4552@freddy.simplesystems.org>
References: <alpine.GSO.2.20.1605270933490.4552@freddy.simplesystems.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 31 May 2016 09:09:53 +0000 (UTC)
Cc: oss-security@lists.openwall.com
Date: Tue, 31 May 2016 11:09:44 +0200
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security issues addressed in GraphicsMagick SVG
 reader
To: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>

On Fri, 27 May 2016 09:37:38 -0500 (CDT)
Bob Friesenhahn <bfriesen@simple.dallas.tx.us> wrote:

> ===========================================
> SVG Security Improvements in GraphicsMagick
> ===========================================
> 
> This is a summary of security improvements made to development
> GraphicsMagick's SVG reader since the 1.3.23 release.  These
> improvements were made in response to fuzz testing by Gustavo Grieco
> (using Quickfuzz) which and which resulted in CVE-2016-2317 and
> CVE-2016-2318.  We are thankful that Gustavo has been willing to
> continue fuzz testing as improvements have been made.

Hi,

I'm curious, are these the CVEs for the issues that still have an
outstanding CVE request at http://seclists.org/oss-sec/2016/q2/180 - or
are they completely unrelated?

(If they are indeed the same/related, can you give more details about
the exact mapping?)

Thanks, 
-- 
Stefan Cornelius / Red Hat Product Security
