X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1102" "Friday" "23" "November" "2018" "19:33:55" "-0600" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1811231930580.16715@scrappy.simplesystems.org>" "23" "Re: [oss-security] Re: Crashes and memory safety bugs in dcraw" "^Date:" nil nil "11" "2018112401:33:55" "[oss-security] Re: Crashes and memory safety bugs in dcraw" (number mark "        bfriesen@sim Nov 23   23/1102  " thread-indent "\"Re: [oss-security] Re: Crashes and memory safety bugs in dcraw\"\n") "<20181123171743.vcwfvbfds7ozhmse@matica.foolinux.mooo.com>" ("<20181123092217.7e4a0f84@computer>" "<20181123171743.vcwfvbfds7ozhmse@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30216 invoked by uid 550); 24 Nov 2018 01:34:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30192 invoked from network); 24 Nov 2018 01:34:09 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <20181123171743.vcwfvbfds7ozhmse@matica.foolinux.mooo.com>
Message-ID: <alpine.GSO.2.20.1811231930580.16715@scrappy.simplesystems.org>
References: <20181123092217.7e4a0f84@computer> <20181123171743.vcwfvbfds7ozhmse@matica.foolinux.mooo.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Fri, 23 Nov 2018 19:33:56 -0600 (CST)
Date: Fri, 23 Nov 2018 19:33:55 -0600 (CST)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Crashes and memory safety bugs in dcraw
To: oss-security@lists.openwall.com

On Fri, 23 Nov 2018, Ian Zimmerman wrote:
> An important side note: because dcraw intentionally doesn't provide a
> library, only an executable, code from it is bundled in at least some
> applications that use it; thus updating the dcraw package in a distro
> will not by itself be the end of this problem for the distro.  One such
> application : RawTherapee

GraphicsMagick also bundles some version of dcraw for its Microsoft 
Windows builds.  It is executed as an external program so if it 
becomes corrupted, it will not corrupt the invoking application.

Another consideration is that the dcraw author has huge sample image 
archive that he is only willing to sell for private use.  This means 
that other projects (including those which derived code from dcraw) 
might not work correctly with as many input files since they have not 
done as much validation.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
