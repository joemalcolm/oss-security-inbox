X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["339" "Friday" "2" "June" "2017" "12:55:10" "-0600" "Todd C. Miller" "Todd.Miller@courtesan.com" "<85f955b3d43c6455@courtesan.com>" "9" "Re: [oss-security] Arbitrary terminal access via sudo on Linux" "^Date:" nil nil "6" "2017060218:55:10" "[oss-security] Arbitrary terminal access via sudo on Linux" (number mark "        Todd.Miller@ Jun  2    9/339   " thread-indent "\"Re: [oss-security] Arbitrary terminal access via sudo on Linux\"\n") "<CANO=Ty2J67rVs2agjkgxQ65eGnAn=iUKXy16HpTrWay_XEQPPQ@mail.gmail.com>" ("<85f9558a0a5e1fa9@courtesan.com>" "<CANO=Ty2J67rVs2agjkgxQ65eGnAn=iUKXy16HpTrWay_XEQPPQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18321 invoked by uid 550); 2 Jun 2017 19:34:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24397 invoked from network); 2 Jun 2017 18:55:22 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=courtesan.com; h=from:to
	:subject:in-reply-to:references:mime-version:content-type
	:content-id:date:message-id; s=selector1; bh=w6ZkAigqfwXf9Nqi49n
	ilEFbpwU=; b=NTTfFancYTNGkrsKLvnmbXgkXq6f9zr82SgqnJhJW3jhFqZho8z
	haYjCFFfNRKlA6OmONjB7U6LmkEF4O9s5BjHLIVLzps2K+Upjngtzl9fPxlhgG6C
	qHLVtzY/YqVTIJ7crgfLgPYyBm5bsu2lrtZQKNguSGtOkIa8+QHz3SXU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=courtesan.com; h=from:to
	:subject:in-reply-to:references:mime-version:content-type
	:content-id:date:message-id; q=dns; s=selector1; b=P8ZvF+C6j9eJO
	+pTCjZqmT8VZ6EP4V9ZEdjy0MM4jIeiCjU2U2MXJl16jmOidqR0i7zuGrSGB9/i8
	Ywr7aXwpXj1pwA3Dw3H1eFvSORiZ/+fgDQfkb6Kirhb67H1krKCQwXzUaM3LaTI9
	aNfkwMg7l8CwTzKMNkMpymbcsa7V0A=
In-reply-to: Your message of "Fri, 02 Jun 2017 12:51:55 -0600."
             <CANO=Ty2J67rVs2agjkgxQ65eGnAn=iUKXy16HpTrWay_XEQPPQ@mail.gmail.com>
References: <85f9558a0a5e1fa9@courtesan.com> <CANO=Ty2J67rVs2agjkgxQ65eGnAn=iUKXy16HpTrWay_XEQPPQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <38995.1496429710.1@xerxes.courtesan.com>
Message-Id: <85f955b3d43c6455@courtesan.com>
Date: Fri, 02 Jun 2017 12:55:10 -0600
From: "Todd C. Miller" <Todd.Miller@courtesan.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Arbitrary terminal access via sudo on Linux
To: oss-security@lists.openwall.com

On Fri, 02 Jun 2017 12:51:55 -0600, Kurt Seifried wrote:

> which says it is NOT exploitable, but you're saying that it is actually
> exploitable? If confirmed yes I'll get you a new CVE for this asap. Thanks.

The file overwrite issue is not exploitable in 1.8.20p1.
However, the arbitrary tty access IS exploitable in 1.8.20p1.

 - todd
