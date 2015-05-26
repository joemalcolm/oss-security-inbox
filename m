X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["837" "Tuesday" "26" "May" "2015" "17:06:55" "+0300" "Dan Carpenter" "dan.carpenter@oracle.com" "<20150526140654.GI11588@mwanda>" "24" "[oss-security] Re: [PATCH v2 4/4] ozwpan: unchecked signed subtraction leads to DoS" nil nil nil "5" "2015052614:06:55" "[oss-security] Re: [PATCH v2 4/4] ozwpan: unchecked signed subtraction leads to DoS" (number mark "U       dan.carpente May 26   24/837   " thread-indent "\"[oss-security] Re: [PATCH v2 4/4] ozwpan: unchecked signed subtraction leads to DoS\"\n") "<1432642669-7289-5-git-send-email-Jason@zx2c4.com>" ("<1431543500-4847-1-git-send-email-Jason@zx2c4.com>" "<1432642669-7289-1-git-send-email-Jason@zx2c4.com>" "<1432642669-7289-5-git-send-email-Jason@zx2c4.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10139 invoked by uid 550); 26 May 2015 14:07:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10094 invoked from network); 26 May 2015 14:07:16 -0000
Message-ID: <20150526140654.GI11588@mwanda>
References: <1431543500-4847-1-git-send-email-Jason@zx2c4.com>
 <1432642669-7289-1-git-send-email-Jason@zx2c4.com>
 <1432642669-7289-5-git-send-email-Jason@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1432642669-7289-5-git-send-email-Jason@zx2c4.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: aserv0022.oracle.com [141.146.126.234]
Cc: oss-security <oss-security@lists.openwall.com>,
        linux-kernel@vger.kernel.org,
        Shigekatsu Tateno <shigekatsu.tateno@atmel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devel@driverdev.osuosl.org
Date: Tue, 26 May 2015 17:06:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [PATCH v2 4/4] ozwpan: unchecked signed subtraction leads to DoS
To: "Jason A. Donenfeld" <Jason@zx2c4.com>

On Tue, May 26, 2015 at 02:17:49PM +0200, Jason A. Donenfeld wrote:
> diff --git a/drivers/staging/ozwpan/ozusbsvc1.c b/drivers/staging/ozwpan/ozusbsvc1.c
> index 8552053..1bde6aa 100644
> --- a/drivers/staging/ozwpan/ozusbsvc1.c
> +++ b/drivers/staging/ozwpan/ozusbsvc1.c
> @@ -326,11 +326,13 @@ static void oz_usb_handle_ep_data(struct oz_usb_ctx *usb_ctx,
>  			struct oz_multiple_fixed *body =
>  				(struct oz_multiple_fixed *)data_hdr;
>  			u8 *data = body->data;
> -			int n;
> +			unsigned int n;
>  			if (!body->unit_size)
>  				break;
>  			n = (len - sizeof(struct oz_multiple_fixed)+1)
>  				/ body->unit_size;
> +			if (n > len / body->unit_size)
> +				break;

You sure do like wrapping to a high value and testing the result for
wrapping instead of validating before doing the subtraction...

regards,
dan carpenter

