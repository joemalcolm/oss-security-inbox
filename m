X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1084" "Monday" "18" "December" "2017" "07:28:32" "+0100" "Marcus Meissner" "meissner@suse.de" "<20171218062832.GB9249@suse.de>" "35" "Re: [oss-security] Portus, missing LDAP server authentication" nil nil nil "12" "2017121806:28:32" "[oss-security] Portus, missing LDAP server authentication" (number mark "U       meissner@sus Dec 18   35/1084  " thread-indent "\"Re: [oss-security] Portus, missing LDAP server authentication\"\n") "<CAA7hUgGYLFEX==FHob2823M0UEoWXG=h+LtJfGLLSdajOYoHrQ@mail.gmail.com>" ("<CAA7hUgGYLFEX==FHob2823M0UEoWXG=h+LtJfGLLSdajOYoHrQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29853 invoked by uid 550); 18 Dec 2017 06:28:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29826 invoked from network); 18 Dec 2017 06:28:53 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 18 Dec 2017 07:28:32 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: security@suse.de
Message-ID: <20171218062832.GB9249@suse.de>
References: <CAA7hUgGYLFEX==FHob2823M0UEoWXG=h+LtJfGLLSdajOYoHrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA7hUgGYLFEX==FHob2823M0UEoWXG=h+LtJfGLLSdajOYoHrQ@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Portus, missing LDAP server authentication

Hi,

On Sun, Dec 17, 2017 at 02:36:42PM +0100, Raphael Geissert wrote:
> Hi,
> 
> Portus 2.2 and older provides LDAP integration for authenticating the
> users. However, in spite of it providing advice on configuring it to
> "to setup LDAP over SSL/TLS"[1], the implementation does not verify
> the server's identity at all.
> 
> I'm writing about it here mainly because there appears to be some
> intention of TLS support. Users might expect it to actually provide
> some kind of security.
> 
> Interestingly enough, the documentation and the config file comments
> say  'the recommended [method] is "starttls".'[2] I don't know where
> they got that from.
> 
> CC'ing SUSE's security team.
> 
> I have not yet reported it to the portus team directly, nor requested
> a CVE id (though I'm tempted to request one, to err on the side of
> safety).
> 
> 
> [1]http://port.us.org/docs/Configuring-Portus.html
> [2]https://github.com/SUSE/Portus/blob/master/config/config.yml#L49
> 
> Cheers,

I have opened
https://bugzilla.suse.com/show_bug.cgi?id=1073232
for this issue.

Ciao, Marcus
