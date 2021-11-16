X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["563" "Tuesday" "16" "November" "2021" "13:51:52" "-0700" "Zach Hoffman" "zrhoffman@apache.org" nil "20" "[oss-security] Re: CVE-2021-43350: Apache Traffic Control: LDAP filter injection vulnerability in Traffic Ops" nil nil nil "11" nil nil (number mark "U       zrhoffman@ap Nov 16   20/563   " thread-indent "\"[oss-security] Re: CVE-2021-43350: Apache Traffic Control: LDAP filter injection vulnerability in Traffic Ops\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-43350: Apache Traffic Control: LDAP filter injection vulnerability in Traffic Ops" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16076 invoked by uid 550); 17 Nov 2021 10:33:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17561 invoked from network); 16 Nov 2021 20:52:06 -0000
Message-ID: <3ba4a13789030965b7bf6aa7258cfd830db1d63c.camel@apache.org>
From: Zach Hoffman <zrhoffman@apache.org>
To: oss-security@lists.openwall.com
Date: Tue, 16 Nov 2021 13:51:52 -0700
In-Reply-To: <eca64e9e-5f1f-ef56-b5f3-0b8f3a83be4a@apache.org>
References: <eca64e9e-5f1f-ef56-b5f3-0b8f3a83be4a@apache.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: CVE-2021-43350: Apache Traffic Control: LDAP filter injection
 vulnerability in Traffic Ops

CORRECTION:
This issue was discovered by Apache Traffic Control user zhouxufeng@bytedance.com.

On Thu, 2021-11-11 at 20:45 +0000, Zach Hoffman wrote:
> Severity: critical
> 
> Description:
> 
> An unauthenticated Apache Traffic Control Traffic Ops user can send a request with a specially-crafted username to the POST /login endpoint of any API version to inject unsanitized content into the LDAP filter.
> 
> 
> Credit:
> 
> This issue was discovered by Apache Traffic Control user pupiles.
> 
> References:
> 
> https://trafficcontrol.apache.org/security/
> 

