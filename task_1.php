/**
 * @param string $text
 * @return string
 */
function highlight_nicknames(string $text): string {

    $result = $text;
    $new_reg = '/@([a-zA-Z]+)[\w]+\s/';
    $res1 = preg_match_all($new_reg, $text . ' ', $matches);

    if ($res1) {
        foreach ($matches[0] as $index => $item) {
            $result = str_replace(trim($item), '<b>' . trim($item) . '</b>', $result);
        }
    }

    return $result;
}