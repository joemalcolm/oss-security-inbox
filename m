X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["493" "Tuesday" "26" "May" "2015" "16:32:21" "+0300" "Dan Carpenter" "dan.carpenter@oracle.com" "<20150526133221.GG11588@mwanda>" "17" "[oss-security] Re: [PATCH v2 1/4] ozwpan: Use proper check to prevent heap overflow" nil nil nil "5" "2015052613:32:21" "[oss-security] Re: [PATCH v2 1/4] ozwpan: Use proper check to prevent heap overflow" (number mark "U       dan.carpente May 26   17/493   " thread-indent "\"[oss-security] Re: [PATCH v2 1/4] ozwpan: Use proper check to prevent heap overflow\"\n") "<1432642669-7289-2-git-send-email-Jason@zx2c4.com>" ("<1431543500-4847-1-git-send-email-Jason@zx2c4.com>" "<1432642669-7289-1-git-send-email-Jason@zx2c4.com>" "<1432642669-7289-2-git-send-email-Jason@zx2c4.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32446 invoked by uid 550); 26 May 2015 13:32:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32405 invoked from network); 26 May 2015 13:32:47 -0000
Date: Tue, 26 May 2015 16:32:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>,
        Shigekatsu Tateno <shigekatsu.tateno@atmel.com>
Cc: oss-security <oss-security@lists.openwall.com>,
        linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devel@driverdev.osuosl.org
Message-ID: <20150526133221.GG11588@mwanda>
References: <1431543500-4847-1-git-send-email-Jason@zx2c4.com>
 <1432642669-7289-1-git-send-email-Jason@zx2c4.com>
 <1432642669-7289-2-git-send-email-Jason@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1432642669-7289-2-git-send-email-Jason@zx2c4.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Subject: [oss-security] Re: [PATCH v2 1/4] ozwpan: Use proper check to prevent heap overflow

On Tue, May 26, 2015 at 02:17:46PM +0200, Jason A. Donenfeld wrote:
> +			data_len = elt->length -
>  					sizeof(struct oz_get_desc_rsp) + 1;

This was in the original code, but I wonder where the + 1 comes from.
Does anyone know?

To be honest, I would prefer if we just checked:

	if (elt->length < sizeof(struct oz_get_desc_rsp) + 1)
		return;
	data_len = elt->length - sizeof(struct oz_get_desc_rsp) + 1;

Shouldn't there be an upper bound on length?  Shigekatsu?

regards,
dan carpenter
