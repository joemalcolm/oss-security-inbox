X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1155" "Thursday" "20" "August" "2015" "22:15:19" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty186705BppnjgQz8Tm1OvX_Pb6kMtbz2u8hj5qkjg7aAg@mail.gmail.com>" "52" "[oss-security] CVE-2015-5185 sblim-sfcb: lookupProviders() null pointer dereference" nil nil nil "8" "2015082104:15:19" "[oss-security] CVE-2015-5185 sblim-sfcb: lookupProviders() null pointer dereference" (number mark "U       kseifried@re Aug 20   52/1155  " thread-indent "\"[oss-security] CVE-2015-5185 sblim-sfcb: lookupProviders() null pointer dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28444 invoked by uid 550); 21 Aug 2015 04:15:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28423 invoked from network); 21 Aug 2015 04:15:32 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=r/xeI428ZXfamyWDcRnhYflrpMo/zTC3V6upc9jASSg=;
        b=HVuD/yRZNuLdX2vFdhW6k+BeZEL5EETwQCN9N+nTPJbWywePb/RPfCzr5Yh6mgpifb
         m1BX3cQMNQZGrpCp+sbygpQlQOASZfbUfNnQ71d2vGCtDonV/mxZ91bZiOOEi/mlI5MV
         4S3A9OHMLwsoiISQYdJ0zTbpvxtLZMNJqNl2nY8+zlDXq48CWdn5G2mEE0dg2JY1Wb1F
         cqmJUZokoEht62/KlvhQ+0ZykMUmTEKzqb3fqLHSg1eFXvflxnrZ6y8/qhMWHW2G6mwT
         Lw083kch50qmbfD7ucHRTSv5zW4wjAaMjUrQ505Z+MOhdJS92SNvBPxNkB28D4N00EHF
         WW4w==
X-Gm-Message-State: ALoCoQk/JjfaUNfkqtBuDZ+VheQQXJEvZZSZPcXiVcNdcGTK0Y/loINM0KPf3WpcEDDAnGxATr5p
MIME-Version: 1.0
X-Received: by 10.129.79.21 with SMTP id d21mr8574482ywb.159.1440130519820;
 Thu, 20 Aug 2015 21:15:19 -0700 (PDT)
Date: Thu, 20 Aug 2015 22:15:19 -0600
Message-ID: <CANO=Ty186705BppnjgQz8Tm1OvX_Pb6kMtbz2u8hj5qkjg7aAg@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=94eb2c0546de10b79d051dca84f0
Subject: [oss-security] CVE-2015-5185 sblim-sfcb: lookupProviders() null pointer dereference

--94eb2c0546de10b79d051dca84f0
Content-Type: text/plain; charset=UTF-8

So the reporter specifically asked us to handle disclosure just now, so
here you go:


Qinghao Tang of QIHU 360 reports:

The function lookupProviders() in sblim-sfcb of version 1.3.4 and 1.3.18
exists a null dereference vulnerability , a remote attacher can cause a
denial of servise (sblim-sfcb crash) via a crafted packet without
"className" info.


Let`s see how this issue happened,the code below is from
./sblim-sfcb-1.3.18/providerMgr.c :


static UtilList *lookupProviders(long type, char *className, char
*nameSpace,
CMPIStatus *st)
{
UtilList *lst;
UtilHashTable **ht=provHt(type,1);
char *id;
int rc;

_SFCB_ENTER(TRACE_PROVIDERMGR, "lookupProviders");

//here, className should be checked
id=(char*)malloc(strlen(nameSpace)+strlen(className)+8);
strcpy(id,nameSpace);
strcat(id,"|");

...

}


Red Hat BZ: https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2015-5185



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0546de10b79d051dca84f0--
