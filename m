X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["682" "Saturday" "19" "September" "2015" "12:18:06" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150919121806.5118f0f4@redhat.com>" "25" "Re: [oss-security] CVE-2015-5155 - openslp 1.2.1 ParseExtension() DoS vulnerability" nil nil nil "9" "2015091910:18:06" "[oss-security] CVE-2015-5155 - openslp 1.2.1 ParseExtension() DoS vulnerability" (number mark "U       scorneli@red Sep 19   25/682   " thread-indent "\"Re: [oss-security] CVE-2015-5155 - openslp 1.2.1 ParseExtension() DoS vulnerability\"\n") "<CAPcZBq6T5NHNfMPLoaH3OJ_ganGL+sDCQr0FeH2Mnihnceze8g@mail.gmail.com>" ("<CAPcZBq6T5NHNfMPLoaH3OJ_ganGL+sDCQr0FeH2Mnihnceze8g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16137 invoked by uid 550); 19 Sep 2015 10:18:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16112 invoked from network); 19 Sep 2015 10:18:24 -0000
Message-ID: <20150919121806.5118f0f4@redhat.com>
In-Reply-To: <CAPcZBq6T5NHNfMPLoaH3OJ_ganGL+sDCQr0FeH2Mnihnceze8g@mail.gmail.com>
References: <CAPcZBq6T5NHNfMPLoaH3OJ_ganGL+sDCQr0FeH2Mnihnceze8g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Sat, 19 Sep 2015 12:18:06 +0200
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-5155 - openslp 1.2.1 ParseExtension()
 DoS vulnerability
To: oss-security@lists.openwall.com

On Wed, 16 Sep 2015 17:40:11 +0800
Qinghao Tang <luodalongde@gmail.com> wrote:

> HI there,
> 
> 
> 
> Greeting! This is Qinghao Tang from QIHU 360  company, China. I am a
> security researcher there.I'm writing to report a vulnerability in
> openslp.
> 
> 
> 
> The function ParseExtension() in openslp 1.2.1 exists a
> vulnerability , an attacher can cause a denial of service (infinite
> loop) via a  packet with crafted "nextoffset" value and "extid" value.

Hi,

I have a hunch that this may be CVE-2010-3609? Can you have a look and
tell me why and how this is different from CVE-2010-3609?

Thanks in advance and kind regards,
-- 
Stefan Cornelius / Red Hat Product Security
