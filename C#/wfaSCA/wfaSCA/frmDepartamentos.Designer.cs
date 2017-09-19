namespace wfaSCA
{
    partial class frmDepartamentos
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDepartamentos));
            System.Windows.Forms.Label dep_sglLabel;
            System.Windows.Forms.Label dep_nomLabel;
            this.departamentoBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorAddNewItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorDeleteItem = new System.Windows.Forms.ToolStripButton();
            this.departamentoBindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.dep_sglTextBox = new System.Windows.Forms.TextBox();
            this.dep_nomTextBox = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.fillByNomeDepartamentoToolStrip = new System.Windows.Forms.ToolStrip();
            this.dep_nomToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.dep_nomToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.fillByNomeDepartamentoToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.epDepto = new System.Windows.Forms.ErrorProvider(this.components);
            this.depsglDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.depnomDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.departamentoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.scaDataSet = new wfaSCA.scaDataSet();
            this.departamentoTableAdapter = new wfaSCA.scaDataSetTableAdapters.DepartamentoTableAdapter();
            this.tableAdapterManager = new wfaSCA.scaDataSetTableAdapters.TableAdapterManager();
            dep_sglLabel = new System.Windows.Forms.Label();
            dep_nomLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.departamentoBindingNavigator)).BeginInit();
            this.departamentoBindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.fillByNomeDepartamentoToolStrip.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.epDepto)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.departamentoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scaDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // departamentoBindingNavigator
            // 
            this.departamentoBindingNavigator.AddNewItem = this.bindingNavigatorAddNewItem;
            this.departamentoBindingNavigator.BindingSource = this.departamentoBindingSource;
            this.departamentoBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.departamentoBindingNavigator.DeleteItem = this.bindingNavigatorDeleteItem;
            this.departamentoBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.bindingNavigatorAddNewItem,
            this.bindingNavigatorDeleteItem,
            this.departamentoBindingNavigatorSaveItem});
            this.departamentoBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.departamentoBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.departamentoBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.departamentoBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.departamentoBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.departamentoBindingNavigator.Name = "departamentoBindingNavigator";
            this.departamentoBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.departamentoBindingNavigator.Size = new System.Drawing.Size(482, 25);
            this.departamentoBindingNavigator.TabIndex = 0;
            this.departamentoBindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorAddNewItem
            // 
            this.bindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorAddNewItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorAddNewItem.Image")));
            this.bindingNavigatorAddNewItem.Name = "bindingNavigatorAddNewItem";
            this.bindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorAddNewItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorAddNewItem.Text = "Add new";
            // 
            // bindingNavigatorDeleteItem
            // 
            this.bindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorDeleteItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorDeleteItem.Image")));
            this.bindingNavigatorDeleteItem.Name = "bindingNavigatorDeleteItem";
            this.bindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorDeleteItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorDeleteItem.Text = "Delete";
            // 
            // departamentoBindingNavigatorSaveItem
            // 
            this.departamentoBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.departamentoBindingNavigatorSaveItem.Image = ((System.Drawing.Image)(resources.GetObject("departamentoBindingNavigatorSaveItem.Image")));
            this.departamentoBindingNavigatorSaveItem.Name = "departamentoBindingNavigatorSaveItem";
            this.departamentoBindingNavigatorSaveItem.Size = new System.Drawing.Size(23, 22);
            this.departamentoBindingNavigatorSaveItem.Text = "Save Data";
            this.departamentoBindingNavigatorSaveItem.Click += new System.EventHandler(this.departamentoBindingNavigatorSaveItem_Click);
            // 
            // dep_sglLabel
            // 
            dep_sglLabel.AutoSize = true;
            dep_sglLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dep_sglLabel.Location = new System.Drawing.Point(32, 73);
            dep_sglLabel.Name = "dep_sglLabel";
            dep_sglLabel.Size = new System.Drawing.Size(44, 18);
            dep_sglLabel.TabIndex = 1;
            dep_sglLabel.Text = "Sigla:";
            // 
            // dep_sglTextBox
            // 
            this.dep_sglTextBox.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.dep_sglTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.departamentoBindingSource, "dep_sgl", true));
            this.dep_sglTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dep_sglTextBox.Location = new System.Drawing.Point(96, 70);
            this.dep_sglTextBox.Name = "dep_sglTextBox";
            this.dep_sglTextBox.Size = new System.Drawing.Size(100, 24);
            this.dep_sglTextBox.TabIndex = 2;
            this.dep_sglTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.dep_sglTextBox_Validating);
            // 
            // dep_nomLabel
            // 
            dep_nomLabel.AutoSize = true;
            dep_nomLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dep_nomLabel.Location = new System.Drawing.Point(32, 99);
            dep_nomLabel.Name = "dep_nomLabel";
            dep_nomLabel.Size = new System.Drawing.Size(53, 18);
            dep_nomLabel.TabIndex = 3;
            dep_nomLabel.Text = "Nome:";
            // 
            // dep_nomTextBox
            // 
            this.dep_nomTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.departamentoBindingSource, "dep_nom", true));
            this.dep_nomTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dep_nomTextBox.Location = new System.Drawing.Point(96, 96);
            this.dep_nomTextBox.Name = "dep_nomTextBox";
            this.dep_nomTextBox.Size = new System.Drawing.Size(250, 24);
            this.dep_nomTextBox.TabIndex = 4;
            this.dep_nomTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.dep_nomTextBox_Validating);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.depsglDataGridViewTextBoxColumn,
            this.depnomDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.departamentoBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(12, 142);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(450, 139);
            this.dataGridView1.TabIndex = 5;
            // 
            // fillByNomeDepartamentoToolStrip
            // 
            this.fillByNomeDepartamentoToolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.dep_nomToolStripLabel,
            this.dep_nomToolStripTextBox,
            this.fillByNomeDepartamentoToolStripButton});
            this.fillByNomeDepartamentoToolStrip.Location = new System.Drawing.Point(0, 25);
            this.fillByNomeDepartamentoToolStrip.Name = "fillByNomeDepartamentoToolStrip";
            this.fillByNomeDepartamentoToolStrip.Size = new System.Drawing.Size(482, 25);
            this.fillByNomeDepartamentoToolStrip.TabIndex = 6;
            this.fillByNomeDepartamentoToolStrip.Text = "fillByNomeDepartamentoToolStrip";
            // 
            // dep_nomToolStripLabel
            // 
            this.dep_nomToolStripLabel.Name = "dep_nomToolStripLabel";
            this.dep_nomToolStripLabel.Size = new System.Drawing.Size(95, 22);
            this.dep_nomToolStripLabel.Text = "Nome do Depto:";
            // 
            // dep_nomToolStripTextBox
            // 
            this.dep_nomToolStripTextBox.Name = "dep_nomToolStripTextBox";
            this.dep_nomToolStripTextBox.Size = new System.Drawing.Size(100, 25);
            // 
            // fillByNomeDepartamentoToolStripButton
            // 
            this.fillByNomeDepartamentoToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.fillByNomeDepartamentoToolStripButton.Name = "fillByNomeDepartamentoToolStripButton";
            this.fillByNomeDepartamentoToolStripButton.Size = new System.Drawing.Size(61, 22);
            this.fillByNomeDepartamentoToolStripButton.Text = "Pesquisar";
            this.fillByNomeDepartamentoToolStripButton.Click += new System.EventHandler(this.fillByNomeDepartamentoToolStripButton_Click);
            // 
            // epDepto
            // 
            this.epDepto.ContainerControl = this;
            // 
            // depsglDataGridViewTextBoxColumn
            // 
            this.depsglDataGridViewTextBoxColumn.DataPropertyName = "dep_sgl";
            this.depsglDataGridViewTextBoxColumn.HeaderText = "Sigla";
            this.depsglDataGridViewTextBoxColumn.Name = "depsglDataGridViewTextBoxColumn";
            // 
            // depnomDataGridViewTextBoxColumn
            // 
            this.depnomDataGridViewTextBoxColumn.DataPropertyName = "dep_nom";
            this.depnomDataGridViewTextBoxColumn.HeaderText = "Nome";
            this.depnomDataGridViewTextBoxColumn.Name = "depnomDataGridViewTextBoxColumn";
            // 
            // departamentoBindingSource
            // 
            this.departamentoBindingSource.DataMember = "Departamento";
            this.departamentoBindingSource.DataSource = this.scaDataSet;
            // 
            // scaDataSet
            // 
            this.scaDataSet.DataSetName = "scaDataSet";
            this.scaDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // departamentoTableAdapter
            // 
            this.departamentoTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.AlunoTableAdapter = null;
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.CursoTableAdapter = null;
            this.tableAdapterManager.DepartamentoTableAdapter = this.departamentoTableAdapter;
            this.tableAdapterManager.DisciplinaTableAdapter = null;
            this.tableAdapterManager.EstadoTableAdapter = null;
            this.tableAdapterManager.MatriculaTableAdapter = null;
            this.tableAdapterManager.UpdateOrder = wfaSCA.scaDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // frmDepartamentos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(482, 301);
            this.Controls.Add(this.fillByNomeDepartamentoToolStrip);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(dep_sglLabel);
            this.Controls.Add(this.dep_sglTextBox);
            this.Controls.Add(dep_nomLabel);
            this.Controls.Add(this.dep_nomTextBox);
            this.Controls.Add(this.departamentoBindingNavigator);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmDepartamentos";
            this.Text = "DEPARTAMENTOS";
            this.Load += new System.EventHandler(this.frmDepartamentos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.departamentoBindingNavigator)).EndInit();
            this.departamentoBindingNavigator.ResumeLayout(false);
            this.departamentoBindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.fillByNomeDepartamentoToolStrip.ResumeLayout(false);
            this.fillByNomeDepartamentoToolStrip.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.epDepto)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.departamentoBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scaDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private scaDataSet scaDataSet;
        private System.Windows.Forms.BindingSource departamentoBindingSource;
        private scaDataSetTableAdapters.DepartamentoTableAdapter departamentoTableAdapter;
        private scaDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator departamentoBindingNavigator;
        private System.Windows.Forms.ToolStripButton bindingNavigatorAddNewItem;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorDeleteItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton departamentoBindingNavigatorSaveItem;
        private System.Windows.Forms.TextBox dep_sglTextBox;
        private System.Windows.Forms.TextBox dep_nomTextBox;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn depsglDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn depnomDataGridViewTextBoxColumn;
        private System.Windows.Forms.ToolStrip fillByNomeDepartamentoToolStrip;
        private System.Windows.Forms.ToolStripLabel dep_nomToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox dep_nomToolStripTextBox;
        private System.Windows.Forms.ToolStripButton fillByNomeDepartamentoToolStripButton;
        private System.Windows.Forms.ErrorProvider epDepto;
    }
}