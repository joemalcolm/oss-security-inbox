X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["337" "Wednesday" "4" "May" "2016" "14:23:39" "+0200" "Aymeric" "mulx@aplu.fr" "<7830cad706e7061be3fe25de4f5116d3@aplu.fr>" "12" "Re: [oss-security] Dotclear 2.9.1 XSS vulnerability by SVG" "^Date:" nil nil "5" "2016050412:23:39" "[oss-security] Dotclear 2.9.1 XSS vulnerability by SVG" (number mark "U       mulx@aplu.fr May  4   12/337   " thread-indent "\"Re: [oss-security] Dotclear 2.9.1 XSS vulnerability by SVG\"\n") "<3626D6E697A150459C44C0E5D8D8D00E0DBDC360@EX02.corp.qihoo.net>" ("<3626D6E697A150459C44C0E5D8D8D00E0DBDC360@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26305 invoked by uid 550); 4 May 2016 12:37:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11921 invoked from network); 4 May 2016 12:23:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aplu.fr; s=s4096;
	t=1462364619; bh=srbF3zaeASwDHoeN+Y0TK5RBbtxROWvBoS2tmF1+B00=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=bb8HXRJCs2NJlrLZ61a5Bji/9McVTb7gxPiq+qe7xwm1GnhArBgeY+dhCbo1nwy7Q
	 Qe7f4HHHJHRhlNoCMqfJrQ7OVmFdIAvqtzAyQasWtjWYtJfd9oqZFKCj/9N2DvmiR5
	 f3inyKpWqHqCBqfVw3c6lxPCaarm+W3Dv+HMKnYVqsxonvF49backJEKA9UiWHAznY
	 PghpCrMjnKRb0PX/IKHfKA2hPbhM6cPMX9dee1x0jCo2nq9E6SYPdip/ojNZSjIukn
	 BGR6xdGNkft8xLgHvr2C6WAtTLkHmTrAu8HGSxdhVNguRKfRw/p2K5A2k2ORqv6RhT
	 kLYq6L9k96ROXCDBM8UOqnjKEqkhO4gqyI9+tueOFofhcJ8y/t2FVCDcgVhnC64jVT
	 KcU73WedKaPq9ahVHNx4rjbFShEctJX4eHKy8gisq1QYSTDQJMeBR7i3vmL1w9AN8Y
	 uKBu7R8jM6XNMWmBf7popk3oem0qKT3qJEIcfVx21kMhXLry4V2P6Lubg+vEcDeNxh
	 8aQ/S/EL+Cohoq1KgIHvrWMimYVCAf5lK/BiTGXgrkMko8yasXObWBwLYVp15JQdYj
	 aKpATApgJw37Dbw22NRWwrf3cY/gKx78fPG097IhP3CSiCZRp2am6TbMoVJVlgJDjq
	 hyw84khrsG/O/0pM2X8Tohd4=
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aplu.fr; s=s4096;
	t=1462364619; bh=srbF3zaeASwDHoeN+Y0TK5RBbtxROWvBoS2tmF1+B00=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=bb8HXRJCs2NJlrLZ61a5Bji/9McVTb7gxPiq+qe7xwm1GnhArBgeY+dhCbo1nwy7Q
	 Qe7f4HHHJHRhlNoCMqfJrQ7OVmFdIAvqtzAyQasWtjWYtJfd9oqZFKCj/9N2DvmiR5
	 f3inyKpWqHqCBqfVw3c6lxPCaarm+W3Dv+HMKnYVqsxonvF49backJEKA9UiWHAznY
	 PghpCrMjnKRb0PX/IKHfKA2hPbhM6cPMX9dee1x0jCo2nq9E6SYPdip/ojNZSjIukn
	 BGR6xdGNkft8xLgHvr2C6WAtTLkHmTrAu8HGSxdhVNguRKfRw/p2K5A2k2ORqv6RhT
	 kLYq6L9k96ROXCDBM8UOqnjKEqkhO4gqyI9+tueOFofhcJ8y/t2FVCDcgVhnC64jVT
	 KcU73WedKaPq9ahVHNx4rjbFShEctJX4eHKy8gisq1QYSTDQJMeBR7i3vmL1w9AN8Y
	 uKBu7R8jM6XNMWmBf7popk3oem0qKT3qJEIcfVx21kMhXLry4V2P6Lubg+vEcDeNxh
	 8aQ/S/EL+Cohoq1KgIHvrWMimYVCAf5lK/BiTGXgrkMko8yasXObWBwLYVp15JQdYj
	 aKpATApgJw37Dbw22NRWwrf3cY/gKx78fPG097IhP3CSiCZRp2am6TbMoVJVlgJDjq
	 hyw84khrsG/O/0pM2X8Tohd4=
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
In-Reply-To: <3626D6E697A150459C44C0E5D8D8D00E0DBDC360@EX02.corp.qihoo.net>
References: <3626D6E697A150459C44C0E5D8D8D00E0DBDC360@EX02.corp.qihoo.net>
Message-ID: <7830cad706e7061be3fe25de4f5116d3@aplu.fr>
X-Sender: mulx@aplu.fr
User-Agent: Roundcube Webmail/1.1.1
X-AV-Checked: ClamAV using ClamSMTP
Date: Wed, 04 May 2016 14:23:39 +0200
From: Aymeric <mulx@aplu.fr>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Dotclear 2.9.1 XSS vulnerability by SVG
To: oss-security@lists.openwall.com

On 2016-05-04 08:46, limingxing wrote:
> Hello,
> We find an vulnerability about Dotclear 2.9.1 XSS vulnerability by SVG
> [zip]

Hello,

FYI, I forwarded your email to their dev mailing list.
Please, if you found any other vulnerability on dotclear, at least add 
them to cc security(@)dotclear.net (http://dev.dotclear.org/2.0/).

Bye
