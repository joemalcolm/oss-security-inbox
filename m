X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2802" "Friday" "8" "January" "2016" "02:46:06" "+0300" "Solar Designer" "solar@openwall.com" "<20160107234606.GB18482@openwall.com>" "80" "[oss-security] Fwd: Integer overflow in the JasPer's jas_matrix_create() function" "^Date:" nil nil "1" "2016010723:46:06" "[oss-security] Fwd: Integer overflow in the JasPer's jas_matrix_create() function" (number mark "        solar@openwa Jan  8   80/2802  " thread-indent "\"[oss-security] Fwd: Integer overflow in the JasPer's jas_matrix_create() function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1552 invoked by uid 550); 7 Jan 2016 23:46:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1491 invoked from network); 7 Jan 2016 23:46:19 -0000
Message-ID: <20160107234606.GB18482@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Date: Fri, 8 Jan 2016 02:46:06 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: Integer overflow in the JasPer's jas_matrix_create() function
To: oss-security@lists.openwall.com

--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following message didn't make it to the list in time, getting stuck
in a temporary spam folder (so the moderators did not see it until I
just happened to find it in there today).

I've also re-attached the PoC that was attached to the original message.

Apparently, the issue was also reported on December 24 here:

https://bugzilla.redhat.com/show_bug.cgi?id=1294039

The reason for the false spam detection turned out to be the Chinese
gb2312 charset.  We expect only English messages on most Openwall
mailing lists, so the following non-English charsets commonly seen in
spam arriving to our lists are currently treated as spam indicators:

koi8-*
windows-1251
shift_jis
iso-2022-jp
big-5
gb2312

These may or may not trigger spam detection depending on more factors,
which is why some other messages by the same sender made it through.

Unfortunately, this detection may sometimes be triggered on
mostly-English messages that have one of these charsets specified for
the message body (as it was in this case) or the message Subject.

For now, my advice is to avoid using these non-English charsets when
posting to English-only mailing lists.  We might reconsider the
anti-spam settings, although so far they've been reasonably effective
and such misdetection appears rare.

----- Forwarded message from limingxing <limingxing@360.cn> -----

From: limingxing <limingxing@360.cn>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: ?????? <huangyonggang@360.cn>
Subject: Integer overflow in the JasPer's jas_matrix_create() function
Date: Thu, 31 Dec 2015 02:05:38 +0000

Hello,
We find a vulnerability in the way JasPer's jas_matrix_create() function parsed certain JPEG 2000 image files. 

jas_matrix_t *jas_matrix_create(int numrows, int numcols)
{
	.......

	if (matrix->maxrows_ > 0) {
		if (!(matrix->rows_ = jas_malloc(matrix->maxrows_ *
		  sizeof(jas_seqent_t *)))) {

        ................

matrix->maxrows_ > 0 ,but matrix->maxrows_ *sizeof(jas_seqent_t *) can cause Integer overflow.

Despite this library is used by many programs (http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one providing support.


This vulnerability was found by Qihoo 360 Codesafe Team

----- End forwarded message -----

--sdtB3X0nJg68CQEu
Content-Type: application/octet-stream
Content-Disposition: attachment; filename="poc.jp2"
Content-Transfer-Encoding: base64

AAAADGpQICANCocKAAAAFGZ0eXBqcDIgAAAAAGpwMiAAAAAtanAyaAAAABZp
aGRyAAAAIAAAACAAAwcHAAAAAAAPY29scgEAAAAAABAAAADYanAyY/9P/1EA
LwAAAAAAIAAAACAAAAAAwAAAAAAAACCAAAAgAAAAEYkAAAAAAwcBAQcBAQcB
Af9SAAwAAAABAQAEBAAB/1wABEBA/2QAJQABQ3JlYXRlZCBieSBPcGVuSlBF
RyB2ZXJzaW9uIDIuMS4w/5AACgAAAAAAYAAB/5Pc1wA=

--sdtB3X0nJg68CQEu--
