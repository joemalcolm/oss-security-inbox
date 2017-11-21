X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1010" "Tuesday" "21" "November" "2017" "16:11:46" "+0100" "Matthias Weckbecker" "matthias@weckbecker.name" "<20171121151146.GA10328@weckbecker.name>" "29" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017112115:11:46" "[oss-security] Fw: Security risk of vim swap files" (number mark "        matthias@wec Nov 21   29/1010  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031132352.2df6d2ad@pc1>" ("<20171031132352.2df6d2ad@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13957 invoked by uid 550); 21 Nov 2017 15:19:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7996 invoked from network); 21 Nov 2017 15:12:13 -0000
Message-ID: <20171121151146.GA10328@weckbecker.name>
References: <20171031132352.2df6d2ad@pc1>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171031132352.2df6d2ad@pc1>
User-Agent: Mutt/1.8.0 (2017-02-23)
Date: Tue, 21 Nov 2017 16:11:46 +0100
From: Matthias Weckbecker <matthias@weckbecker.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

Hi,

On Tue, Oct 31, 2017 at 01:23:52PM +0100, Hanno Boeck wrote:
> I just sent this to the vim dev list, but I guess it's interesting for
> oss-security, too.
> [...]
> 
> I wanted to point out an issue here with vim swap files that make them
> a security problem.

this is not limited to swap files.

> 
> On web servers this can be a severe security risk. One can e.g. scan
> for web hosts that have swap files of PHP configuration files and thus
> expose settings like database passwords. (e.g. wget
> http://example.com/.wp-config.php.swp )
>
> In a scan of the alexa top 1 million I found ~750 instances of such
> files. I tried to inform affected people as best as I could. I also
> discovered such scans in my own web server logs, so I assume black hats
> are already aware of this and it's actively exploitet.
>

One might want to consider adding e.g. .un~ files to the scanning too.
Unless 'undodir' is configured in ~/.vimrc, those files end up in the
same directory if 'undofile' is set.

Matthias
