survey "Point of Care Checkpoint Questions", :default_mandatory => true do

  section "Version 1" do
    # A label is a question that accepts no answers
    q_1 "I feel that my care team is regularly teaching me about my medicines and their side effects during the following days of my hospital stay:",
      :pick => :one
    a_1 "Everyday"
    a_2 "About half of the days of my hospital stay"
    a_3 "Less than half of the days of my hospital stay"
    a_4 "None of the days of my hospital stay"

    q_1a "Please leave comment to explain"
    a_1 :text
    dependency :rule => "A or B or C or D"
    condition_A :q_1, "==", :a_1
    condition_B :q_1, "==", :a_2
    condition_C :q_1, "==", :a_3
    condition_D :q_1, "==", :a_4

    q_2 "I feel that the “3 Medicines” teaching I recently received from the pharmacy student was:",
      :pick => :one
    a_1 "More helpful than other medicine teachings in this hospital"
    a_2 "About the same level of help as other medicine teachings in this hospital"
    a_3 "Less helpful than other medicine teachings in this hospital"
    a_4 "My first time learning about my medicines at this hospital"

    q_2a "Please leave comment to explain"
    a_1 :text
    dependency :rule => "A or B or C or D"
    condition_A :q_2, "==", :a_1
    condition_B :q_2, "==", :a_2
    condition_C :q_2, "==", :a_3
    condition_D :q_2, "==", :a_4

    q_3 "I feel that the “3 Medicines” teaching I recently received from the pharmacy student gave me: (check all that apply)",
      :pick => :any
    a_1 "An improved understanding of what my medicine if being used for"
    a_2 "An improved understanding of what side effects my medicine may have"
    a_3 "An improved understanding of how my pain medicine works"

    q_3a "Please leave comment to explain"
    a_1 :text
    dependency :rule => "A or B or C"
    condition_A :q_3, "==", :a_1
    condition_B :q_3, "==", :a_2
    condition_C :q_3, "==", :a_3

    q_4 "I feel that the “3 Medicines” teaching I recently received from the pharmacy student could be improved in the following ways: (check all that apply)",
      :pick => :any
    a_1 "More time should be given for the visit"
    a_2 "More than one visit should be given"
    a_3 "Teaching materials should be sent to me by email"
    a_4 "Teaching materials should be printed out for me"
    a_5 "The pharmacy student could improve their explanation of what my medicine is being used for"
    a_6 "The pharmacy student could improve their explanation of what my medicine’s side effects are"
    a_7 "The pharmacy student could improve their explanation of how my pain medicine works"
    a_8 "Less time should be given for the visit"
    a_9 "Other (please use comment section"

    q_4a "Please leave comment to explain"
    a_1 :text
    dependency :rule => "A"
    condition_A :q_4, "==", :a_9
  end
end
