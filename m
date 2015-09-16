X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2536" "Wednesday" "16" "September" "2015" "17:40:11" "+0800" "Qinghao Tang" "luodalongde@gmail.com" "<CAPcZBq6T5NHNfMPLoaH3OJ_ganGL+sDCQr0FeH2Mnihnceze8g@mail.gmail.com>" "142" "[oss-security] CVE-2015-5155 - openslp 1.2.1 ParseExtension() DoS vulnerability" nil nil nil "9" "2015091609:40:11" "[oss-security] CVE-2015-5155 - openslp 1.2.1 ParseExtension() DoS vulnerability" (number mark "        luodalongde@ Sep 16  142/2536  " thread-indent "\"[oss-security] CVE-2015-5155 - openslp 1.2.1 ParseExtension() DoS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32225 invoked by uid 550); 16 Sep 2015 16:29:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20264 invoked from network); 16 Sep 2015 09:40:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=qAxSDypQQjO/BNMpVIPtX8vz6sRwObzPQteNo3N1QzM=;
        b=PcfOzmS5+wRrlXJrIbH4AJajCYWbm795DMQaaq8MvP2pd8nUZwV3nGtCG3Vf49zWSp
         n3v/nl2AD7xvV1VbpzUfvZ3t+LlnLimInIxZbZkYYbMMOZKfyMx0IDX0r5qrCwW5U41A
         1cYRr8/SErO4siuDDnHrHFx0/g81HXjFByyUlTzsWJ9wooHFV1nphCxiMROWh1lhd4YX
         oSAJ9Gch1lNjC0DBhId8pQXR9TTjecUgEcpWIz2dF7V4BIfa5NZpCwP62ZwiSEwPupBY
         x+G4nQLxNJ6DPCrKFvTXzJydzTSWHXeE5f4KVENVNfGYBD2Q9q/R2jwVSNzcsJdb8Chg
         NGmg==
MIME-Version: 1.0
X-Received: by 10.180.90.107 with SMTP id bv11mr17418629wib.69.1442396411645;
 Wed, 16 Sep 2015 02:40:11 -0700 (PDT)
Message-ID: <CAPcZBq6T5NHNfMPLoaH3OJ_ganGL+sDCQr0FeH2Mnihnceze8g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d043c81d4bdd4fc051fda1549
Date: Wed, 16 Sep 2015 17:40:11 +0800
From: Qinghao Tang <luodalongde@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5155 - openslp 1.2.1 ParseExtension() DoS vulnerability
To: secalert@redhat.com, oss-security@lists.openwall.com

--f46d043c81d4bdd4fc051fda1549
Content-Type: text/plain; charset=UTF-8

HI there,



Greeting! This is Qinghao Tang from QIHU 360  company, China. I am a
security researcher there.I'm writing to report a vulnerability in openslp.



The function ParseExtension() in openslp 1.2.1 exists a vulnerability , an
attacher can cause a denial of service (infinite loop) via a  packet with
crafted "nextoffset" value and "extid" value.


Let`s see how this issue  happened,the code below is from
/openslp-1.2.1/common/slp_message.c:

/*--------------------------------------------------------------------------*/

int ParseExtension(SLPBuffer buffer, SLPMessage message)

/* Parse extensions *after* all standard protocol fields are parsed
*/

/*--------------------------------------------------------------------------*/

{

    int             extid;

    int             nextoffset;

    int             result  = SLP_ERROR_OK;




    nextoffset = message->header.extoffset;

    while(nextoffset)

    {

        //here,buffer->start value is stable ,and we can
control nextoffset,so we can control buffer->curpos

        buffer->curpos = buffer->start + nextoffset;

        if(buffer->curpos + 5 >= buffer->end)

        {

            /* Extension takes us past the end of the buffer */

            result = SLP_ERROR_PARSE_ERROR;

            goto CLEANUP;

        }



        extid = AsUINT16(buffer->curpos);

        buffer->curpos += 2;


        //here,wo can control nextoffset by make a crafted packet

        nextoffset = AsUINT24(buffer->curpos);

        buffer->curpos += 3;



        switch(extid)

        {

        case SLP_EXTENSION_ID_REG_PID:

            if(message->header.functionid == SLP_FUNCT_SRVREG)

            {

                /* check to see if buffer is large enough to contain the 4
byte pid */

                if(buffer->curpos + 4 > buffer->end)

                {

                    result = SLP_ERROR_PARSE_ERROR;

                    goto CLEANUP;

                }



                message->body.srvreg.pid = AsUINT32(buffer->curpos);

                buffer->curpos += 4;

            }

            break;


        default:

            if (extid >= 0x4000 && extid <= 0x7FFF )

            {

                /* This is a required extension.  We better error out */

                result = SLP_ERROR_MESSAGE_NOT_SUPPORTED;

                goto CLEANUP;

            }

            break;

        }

    }


CLEANUP:



    return result;

}

--f46d043c81d4bdd4fc051fda1549--
