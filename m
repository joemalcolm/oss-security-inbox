X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["608" "Thursday" "31" "December" "2015" "13:54:55" "+0000" "Jeremy Stanley" "jeremy@openstack.org" "<20151231135455.GP2344@openstack.org>" "14" "Re: [oss-security] Re: CVE Request: Squashfs 4.2 Race Condition" nil nil nil "12" "2015123113:54:55" "[oss-security] Re: CVE Request: Squashfs 4.2 Race Condition" (number mark "U       jeremy@opens Dec 31   14/608   " thread-indent "\"Re: [oss-security] Re: CVE Request: Squashfs 4.2 Race Condition\"\n") "<A1D60BD4-70C3-481D-87A2-5F1B40F0CF3E@member.fsf.org>" ("<20151230203723.D7A576C0192@smtpvmsrv1.mitre.org>" "<A1D60BD4-70C3-481D-87A2-5F1B40F0CF3E@member.fsf.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16268 invoked by uid 550); 31 Dec 2015 13:55:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16235 invoked from network); 31 Dec 2015 13:55:08 -0000
X-Auth-ID: jeremy@openstack.org
X-Sender-Id: jeremy@openstack.org
Date: Thu, 31 Dec 2015 13:54:55 +0000
From: Jeremy Stanley <jeremy@openstack.org>
To: oss-security@lists.openwall.com
Message-ID: <20151231135455.GP2344@openstack.org>
References: <20151230203723.D7A576C0192@smtpvmsrv1.mitre.org>
 <A1D60BD4-70C3-481D-87A2-5F1B40F0CF3E@member.fsf.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <A1D60BD4-70C3-481D-87A2-5F1B40F0CF3E@member.fsf.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] Re: CVE Request: Squashfs 4.2 Race Condition

On 2015-12-31 06:29:55 +0900 (+0900), Jihyeok Seo wrote:
[...]
> However, firmware upgrade procedures (remote or local) which uses
> unsquashfs, on devices such as network routers, could be crashed
> with an untrusted Squashfs filesystem image and lead to denial of
> service.

To reasonably consider that an exploit, you first have to ask
whether there are easier ways for an untrusted firmware upgrade
image to crash devices such as network routers. It seems like if you
are willing to load an untrusted firmware onto your router, having a
patched Squashfs is the least of your worries?
-- 
Jeremy Stanley
