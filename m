X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["773" "Monday" "7" "August" "2017" "14:05:08" "+0100" "John Haxby" "john.haxby@oracle.com" "<c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>" "24" "Re: [oss-security] Cve issue discussion" nil nil nil "8" "2017080713:05:08" "[oss-security] Cve issue discussion" (number mark "U       john.haxby@o Aug  7   24/773   " thread-indent "\"Re: [oss-security] Cve issue discussion\"\n") "<CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>" ("<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<6651351.AxBd7pCpa9@wanheda>" "<SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>" "<20170807123756.GA27766@suse.de>" "<CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17985 invoked by uid 550); 7 Aug 2017 13:05:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17903 invoked from network); 7 Aug 2017 13:05:29 -0000
To: oss-security@lists.openwall.com
References: <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <6651351.AxBd7pCpa9@wanheda>
 <SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>
 <20170807123756.GA27766@suse.de>
 <CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>
From: John Haxby <john.haxby@oracle.com>
Message-ID: <c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>
Date: Mon, 7 Aug 2017 14:05:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Source-IP: aserv0022.oracle.com [141.146.126.234]
Subject: Re: [oss-security] Cve issue discussion

On 07/08/17 13:47, Glenn Randers-Pehrson wrote:
> It's not causing a crash, just a delay.  You'll safely get either an OOM
> message or an EOF message.and no memory leak.
> 

That's scant comfort when your browser is the one hit by the OOM killer
and then again when you restart it.  And also while you're wondering
what's going on because your laptop is basically completely
non-responsive ...

So yes, it's a remote DoS and definitely worth a CVE.  We have had other
similar CVEs in the past with image handling libraries not being
sufficiently paranoid.

jch

> Glenn
> 
> On Mon, Aug 7, 2017 at 8:37 AM, Marcus Meissner <meissner@suse.de> wrote:
>> Hi,
>>
>> if it could crash the image reader I would consider it "remote denial of service"
>> classed and CVE worthy.

