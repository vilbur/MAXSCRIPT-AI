/* Tests the canonical title style twice on a detached WinForms button.
   Run beside ToolTitleButton.ms; no dialog or scene objects are created.
*/
(
    local helper_path = (getFilenamePath (getSourceFileName())) + "ToolTitleButton.ms"
    fileIn helper_path
    local test_button = dotNetObject "System.Windows.Forms.Button"
    local color_type = dotNetClass "System.Drawing.Color"
    local dark_color = color_type.FromArgb 45 45 48
    local title_color = color_type.FromArgb 62 158 255
    local tests_passed = true

    for test_index = 1 to 2 do
    (
        ToolTitleButton.setupToolTitleButton test_button "TITLE STYLE TEST"
        local pass_result = test_button.Text == "TITLE STYLE TEST" and \
            test_button.BackColor.ToArgb() == dark_color.ToArgb() and \
            test_button.ForeColor.ToArgb() == title_color.ToArgb() and \
            test_button.FlatAppearance.BorderColor.ToArgb() == dark_color.ToArgb() and \
            test_button.FlatAppearance.MouseOverBackColor.ToArgb() == dark_color.ToArgb() and \
            test_button.FlatAppearance.MouseDownBackColor.ToArgb() == dark_color.ToArgb() and \
            test_button.FlatAppearance.BorderSize == 0 and \
            test_button.FlatStyle.ToString() == "Flat" and \
            test_button.UseVisualStyleBackColor == false and test_button.TabStop == false and \
            test_button.Font.Name == "Segoe UI" and test_button.Font.Size == 14.0 and \
            test_button.Height == ((test_button.Font.Size as integer) + 6) and \
            test_button.Font.Style.ToString() == "Bold" and test_button.Font.Unit.ToString() == "Pixel"
        format "Title style pass %: % | font:% size:% height:% style:% unit:%\n" test_index pass_result \
            test_button.Font.Name test_button.Font.Size test_button.Height (test_button.Font.Style.ToString()) (test_button.Font.Unit.ToString())
        tests_passed = tests_passed and pass_result
    )

    test_button.Dispose()
    format "Title style test result: %\n" tests_passed
    tests_passed
)
